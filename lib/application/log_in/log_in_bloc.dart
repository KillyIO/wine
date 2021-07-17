import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rustic/option.dart';
import 'package:rustic/result.dart';
import 'package:wine/domain/auth/email_address.dart';
import 'package:wine/domain/auth/i_auth_facade.dart';
import 'package:wine/domain/auth/password.dart';
import 'package:wine/domain/core/core_failure.dart';
import 'package:wine/domain/sessions/i_sessions_repository.dart';
import 'package:wine/domain/user/i_user_repository.dart';
import 'package:wine/domain/user/user.dart';

part 'log_in_event.dart';
part 'log_in_state.dart';
part 'log_in_bloc.freezed.dart';

/// @nodoc
@Environment(Environment.dev)
@Environment(Environment.prod)
@injectable
class LogInBloc extends Bloc<LogInEvent, LogInState> {
  /// @nodoc
  LogInBloc(
    this._authFacade,
    this._sessionsRepository,
    this._userRepository,
  ) : super(LogInState.initial());

  final IAuthFacade _authFacade;
  final ISessionsRepository _sessionsRepository;
  final IUserRepository _userRepository;

  @override
  Stream<LogInState> mapEventToState(
    LogInEvent event,
  ) async* {
    yield* event.map(
      emailAddressChanged: (value) async* {
        yield state.copyWith(
          emailAddress: EmailAddress(value.emailAddressStr),
          failureOption: const None(),
        );
      },
      loggedInWithEmailAndPassword: (_) async* {
        if (_authFacade.isLoggedIn) {
          final userOption = await _authFacade.getLoggedInUser();
          final user = userOption?.asPlain();

          if (user != null) {
            (await _userRepository.loadUser(user.uid.getOrCrash())).match(
              (user) async* {
                add(LogInEvent.userLoaded(user));
              },
              (failure) async* {
                yield state.copyWith(
                  failureOption: Option(Err(CoreFailure.user(failure))),
                  isProcessing: false,
                  showErrorMessages: true,
                );
              },
            );
          }
        }
      },
      loggedInWithGoogle: (_) async* {
        if (_authFacade.isLoggedIn) {
          final userOption = await _authFacade.getLoggedInUser();
          final user = userOption?.asPlain();

          if (user != null) {
            (await _userRepository.loadUser(user.uid.getOrCrash())).match(
              (userData) async* {
                add(LogInEvent.userLoaded(userData));
              },
              (failure) async* {
                failure.maybeMap(
                  userNotFound: (_) async* {
                    add(LogInEvent.userLoaded(user));
                  },
                  orElse: () async* {
                    yield state.copyWith(
                      failureOption: Option(Err(CoreFailure.user(failure))),
                      isProcessing: false,
                      showErrorMessages: true,
                    );
                  },
                );
              },
            );
          }
        }
      },
      logInWithEmailAndPasswordPressed: (value) async* {
        final isEmailValid = state.emailAddress.isValid;
        final isPasswordValid = state.password.isValid;

        if (isEmailValid && isPasswordValid) {
          yield state.copyWith(
            failureOption: const None(),
            isProcessing: true,
          );

          yield* (await _authFacade.logInWithEmailAndPassword(
            state.emailAddress,
            state.password,
          ))
              .match(
            (_) async* {
              add(const LogInEvent.loggedInWithEmailAndPassword());
            },
            (failure) async* {
              yield state.copyWith(
                failureOption: Option(Err(CoreFailure.auth(failure))),
                isProcessing: false,
                showErrorMessages: true,
              );
            },
          );
        }
      },
      logInWithGooglePressed: (value) async* {
        yield state.copyWith(
          failureOption: const None(),
          isProcessing: true,
        );

        yield* (await _authFacade.logInWithGoogle()).match(
          (_) async* {
            add(const LogInEvent.loggedInWithGoogle());
          },
          (failure) async* {
            yield state.copyWith(
              failureOption: Option(Err(CoreFailure.auth(failure))),
              isProcessing: false,
              showErrorMessages: true,
            );
          },
        );
      },
      passwordChanged: (value) async* {
        yield state.copyWith(
          failureOption: const None(),
          password: Password(value.passwordStr),
        );
      },
      userDetailsSaved: (value) async* {
        yield* (await _sessionsRepository.updateSession(value.user)).match(
          (_) async* {
            yield state.copyWith(
              failureOption: const None(),
              isAuthenticated: true,
              isProcessing: false,
            );
          },
          (failure) async* {
            yield state.copyWith(
              failureOption: Option(Err(CoreFailure.sessions(failure))),
              isProcessing: false,
              showErrorMessages: true,
            );
          },
        );
      },
      userLoaded: (value) async* {
        yield* (await _userRepository.saveDetailsFromUser(value.user)).match(
          (_) async* {
            add(LogInEvent.userDetailsSaved(value.user));
          },
          (failure) async* {
            yield state.copyWith(
              failureOption: Option(Err(CoreFailure.user(failure))),
              isProcessing: false,
              showErrorMessages: true,
            );
          },
        );
      },
    );
  }
}
