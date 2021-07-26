import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rustic/option.dart';
import 'package:rustic/result.dart';
import 'package:uuid/uuid.dart';
import 'package:wine/domain/auth/email_address.dart';
import 'package:wine/domain/auth/i_auth_facade.dart';
import 'package:wine/domain/auth/password.dart';
import 'package:wine/domain/auth/username.dart';
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
      customUsernameGenerated: (value) async* {
        yield* _saveUsername(value.user);
      },
      emailAddressChanged: (value) async* {
        yield state.copyWith(
          emailAddress: EmailAddress(value.emailAddressStr),
          failureOption: const None(),
        );
      },
      loggedInWithEmailAndPassword: (_) async* {
        if (_authFacade.isLoggedIn) {
          final userOption = await _authFacade.getLoggedInUser();
          final userAsplain = userOption?.asPlain();

          if (userAsplain != null) {
            (await _userRepository.loadUser(userAsplain.uid.getOrCrash()))
                .match(
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
          final userAsplain = userOption?.asPlain();

          if (userAsplain != null) {
            (await _userRepository.loadUser(userAsplain.uid.getOrCrash()))
                .match(
              (user) async* {
                add(LogInEvent.userLoaded(user));
              },
              (failure) async* {
                failure.maybeMap(
                  userNotFound: (_) async* {
                    add(LogInEvent.userNotFound(userAsplain));
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
        yield* _saveDetailsFromUser(value.user);
      },
      usernameAvailabilityConfirmed: (value) async* {
        yield* _saveUsername(value.user);
      },
      usernameSaved: (value) async* {
        yield* _saveDetailsFromUser(value.user);
      },
      userNotFound: (value) async* {
        yield* (await _userRepository.checkUsernameAvailability(
          value.user.username,
        ))
            .match(
          (_) async* {
            add(LogInEvent.usernameAvailabilityConfirmed(value.user));
          },
          (failure) async* {
            var usernameStr = value.user.username.getOrCrash();

            final randomStrList =
                const Uuid().v1().replaceAll(r'-', '').split('')..shuffle();
            final randomStr = randomStrList.join();

            usernameStr = '$usernameStr$randomStr';

            final user = value.user.copyWith(username: Username(usernameStr));

            add(LogInEvent.customUsernameGenerated(user));
          },
        );
      },
    );
  }

  Stream<LogInState> _saveDetailsFromUser(User user) async* {
    yield* (await _userRepository.saveDetailsFromUser(user)).match(
      (_) async* {
        add(LogInEvent.userDetailsSaved(user));
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

  Stream<LogInState> _saveUsername(User user) async* {
    yield* (await _userRepository.saveUsername(user.uid, user.username)).match(
      (_) async* {
        add(LogInEvent.usernameSaved(user));
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
