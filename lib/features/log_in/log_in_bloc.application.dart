import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:oxidized/oxidized.dart';
import 'package:uuid/uuid.dart';
import 'package:wine/core/core_failure.domain.dart';
import 'package:wine/domain/sessions/i_sessions_repository.dart';
import 'package:wine/features/auth/auth_failure.domain.dart' as auth_failure;
import 'package:wine/features/auth/email_address.domain.dart';
import 'package:wine/features/auth/i_auth_facade.domain.dart';
import 'package:wine/features/auth/password.domain.dart';
import 'package:wine/features/auth/username.fomain.dart';
import 'package:wine/features/user/i_user_repository.domain.dart';
import 'package:wine/features/user/user.domain.dart';
import 'package:wine/features/user/user_failure.domain.dart';

part 'log_in_bloc.application.freezed.dart';
part 'log_in_event.application.dart';
part 'log_in_state.application.dart';

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
  ) : super(LogInState.initial()) {
    on<CredentialAlreadyInUse>(
      (_, emit) async =>
          (await _authFacade.logInWithCredentialAlreadyInUse()).match(
        (_) {
          add(const LogInEvent.loggedInWithGoogle());
        },
        (failure) {
          emit(
            state.copyWith(
              failureOption: Option.some(Err(CoreFailure.auth(failure))),
              isProcessing: false,
              showErrorMessages: true,
            ),
          );
        },
      ),
    );
    on<CustomUsernameGenerated>(
      (value, emit) async => await _saveUsername(value.user, emit),
    );
    on<EmailAddressChanged>(
      (value, emit) => emit(
        state.copyWith(
          emailAddress: EmailAddress(value.emailAddressStr),
          failureOption: const None(),
        ),
      ),
    );
    on<LoggedInWithEmailAndPassword>((_, emit) async {
      if (_authFacade.isLoggedIn) {
        final userOption = await _authFacade.getLoggedInUser();
        final userAsplain = userOption.toNullable();

        if (userAsplain != null) {
          (await _userRepository.loadUser(userAsplain.uid)).match(
            (user) {
              add(LogInEvent.userLoaded(user));
            },
            (failure) {
              emit(
                state.copyWith(
                  failureOption: Option.some(Err(CoreFailure.user(failure))),
                  isProcessing: false,
                  showErrorMessages: true,
                ),
              );
            },
          );
        }
      }
    });
    on<LoggedInWithGoogle>((_, emit) async {
      if (_authFacade.isLoggedIn) {
        final userOption = await _authFacade.getLoggedInUser();
        final userAsplain = userOption.toNullable();

        if (userAsplain != null) {
          (await _userRepository.loadUser(userAsplain.uid)).match(
            (user) {
              add(LogInEvent.userLoaded(user));
            },
            (failure) {
              failure.maybeMap(
                userNotFound: (_) {
                  add(LogInEvent.userNotFound(userAsplain));
                },
                orElse: () {
                  emit(
                    state.copyWith(
                      failureOption:
                          Option.some(Err(CoreFailure.user(failure))),
                      isProcessing: false,
                      showErrorMessages: true,
                    ),
                  );
                },
              );
            },
          );
        }
      }
    });
    on<LogInWithEmailAndPasswordPressed>((_, emit) async {
      final isEmailValid = state.emailAddress.isValid;
      final isPasswordValid = state.password.isValid;

      if (isEmailValid && isPasswordValid) {
        emit(
          state.copyWith(
            failureOption: const None(),
            isProcessing: true,
          ),
        );

        (await _authFacade.logInWithEmailAndPassword(
          state.emailAddress,
          state.password,
        ))
            .match(
          (_) {
            add(const LogInEvent.loggedInWithEmailAndPassword());
          },
          (failure) {
            emit(
              state.copyWith(
                failureOption: Option.some(Err(CoreFailure.auth(failure))),
                isProcessing: false,
                showErrorMessages: true,
              ),
            );
          },
        );
      }
    });
    on<LogInWithGooglePressed>((_, emit) async {
      emit(
        state.copyWith(
          failureOption: const None(),
          isProcessing: true,
        ),
      );

      (await _authFacade.logInWithGoogle()).match(
        (_) {
          add(const LogInEvent.loggedInWithGoogle());
        },
        (failure) {
          if (failure is auth_failure.CredentialAlreadyInUse) {
            add(const LogInEvent.credentialAlreadyInUse());
          } else {
            emit(
              state.copyWith(
                failureOption: Option.some(Err(CoreFailure.auth(failure))),
                isProcessing: false,
                showErrorMessages: true,
              ),
            );
          }
        },
      );
    });
    on<PasswordChanged>(
      (value, emit) => emit(
        state.copyWith(
          failureOption: const None(),
          password: Password(value.passwordStr),
        ),
      ),
    );
    on<UserDetailsSaved>(
      (value, emit) async =>
          (await _sessionsRepository.insertSession(value.user)).match(
        (_) {
          emit(
            state.copyWith(
              failureOption: const None(),
              isAuthenticated: true,
              isProcessing: false,
            ),
          );
        },
        (failure) {
          emit(
            state.copyWith(
              failureOption: Option.some(Err(CoreFailure.sessions(failure))),
              isProcessing: false,
              showErrorMessages: true,
            ),
          );
        },
      ),
    );
    on<UserLoaded>(
      (value, emit) async => await _saveDetailsFromUser(value.user, emit),
    );
    on<UsernameAvailabilityConfirmed>(
      (value, emit) async => await _saveUsername(value.user, emit),
    );
    on<UsernameSaved>(
      (value, emit) async => await _saveDetailsFromUser(value.user, emit),
    );
    on<UserNotFound>((value, emit) async {
      (await _userRepository.checkUsernameAvailability(
        value.user.username,
      ))
          .match(
        (_) {
          add(LogInEvent.usernameAvailabilityConfirmed(value.user));
        },
        (failure) {
          if (failure is UsernameAlreadyInUse) {
            final randomStrList =
                const Uuid().v1().replaceAll('-', '').split('')..shuffle();
            final randomStr = randomStrList.join();

            final user = value.user.copyWith(username: Username(randomStr));

            add(LogInEvent.customUsernameGenerated(user));
          } else {
            emit(
              state.copyWith(
                failureOption: Option.some(Err(CoreFailure.user(failure))),
                isProcessing: false,
                showErrorMessages: true,
              ),
            );
          }
        },
      );
    });
  }

  final IAuthFacade _authFacade;
  final ISessionsRepository _sessionsRepository;
  final IUserRepository _userRepository;

  FutureOr<void> _saveDetailsFromUser(
    User user,
    Emitter<LogInState> emit,
  ) async {
    (await _userRepository.saveDetailsFromUser(user)).match(
      (_) {
        add(LogInEvent.userDetailsSaved(user));
      },
      (failure) {
        emit(
          state.copyWith(
            failureOption: Option.some(Err(CoreFailure.user(failure))),
            isProcessing: false,
            showErrorMessages: true,
          ),
        );
      },
    );
  }

  FutureOr<void> _saveUsername(User user, Emitter<LogInState> emit) async {
    (await _userRepository.saveUsername(user.uid, user.username)).match(
      (_) {
        add(LogInEvent.usernameSaved(user));
      },
      (failure) {
        emit(
          state.copyWith(
            failureOption: Option.some(Err(CoreFailure.user(failure))),
            isProcessing: false,
            showErrorMessages: true,
          ),
        );
      },
    );
  }
}
