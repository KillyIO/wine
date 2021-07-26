import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rustic/option.dart';
import 'package:rustic/result.dart';
import 'package:wine/domain/auth/confirm_password.dart';
import 'package:wine/domain/auth/email_address.dart';
import 'package:wine/domain/auth/i_auth_facade.dart';
import 'package:wine/domain/auth/password.dart';
import 'package:wine/domain/auth/username.dart';
import 'package:wine/domain/core/core_failure.dart';
import 'package:wine/domain/sessions/i_sessions_repository.dart';
import 'package:wine/domain/user/i_user_repository.dart';
import 'package:wine/domain/user/user.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';
part 'sign_up_bloc.freezed.dart';

/// @nodoc
@Environment(Environment.dev)
@Environment(Environment.prod)
@injectable
class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  /// @nodoc
  SignUpBloc(
    this._authFacade,
    this._sessionsRepository,
    this._userRepository,
  ) : super(SignUpState.initial());

  final IAuthFacade _authFacade;
  final ISessionsRepository _sessionsRepository;
  final IUserRepository _userRepository;

  @override
  Stream<SignUpState> mapEventToState(
    SignUpEvent event,
  ) async* {
    yield* event.map(
      accountCreated: (value) async* {
        final userOption = await _authFacade.getLoggedInUser();
        var userAsPlain = userOption?.asPlain();

        if (userAsPlain != null) {
          userAsPlain = userAsPlain.copyWith(username: state.username);

          yield* (await _userRepository.saveUsername(
            userAsPlain.uid,
            userAsPlain.username,
          ))
              .match(
            (_) async* {
              add(SignUpEvent.usernameSaved(userAsPlain!));
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
      },
      confirmPasswordChanged: (value) async* {
        final password = state.password.value.ok.asPlain();

        if (password != null) {
          yield state.copyWith(
            confirmPassword:
                ConfirmPassword(password, value.confirmPasswordStr),
            failureOption: const None(),
          );
        }
      },
      emailAddressChanged: (value) async* {
        yield state.copyWith(
          emailAddress: EmailAddress(value.emailAddressStr),
          failureOption: const None(),
        );
      },
      passwordChanged: (value) async* {
        yield state.copyWith(
          failureOption: const None(),
          password: Password(value.passwordStr),
        );
      },
      signUpPressed: (value) async* {
        final isUsernameValid = state.username.isValid;

        if (isUsernameValid) {
          yield state.copyWith(
            failureOption: const None(),
            isProcessing: true,
          );

          yield* (await _userRepository.checkUsernameAvailability(
            state.username,
          ))
              .match(
            (_) async* {
              add(const SignUpEvent.usernameAvailabilityConfirmed());
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
      usernameAvailabilityConfirmed: (value) async* {
        final isEmailValid = state.emailAddress.isValid;
        final isPasswordValid = state.password.isValid;
        final isConfirmPasswordValid = state.confirmPassword.isValid;

        if (isEmailValid && isPasswordValid && isConfirmPasswordValid) {
          yield* (await _authFacade.convertWithEmailAndPassword(
            state.emailAddress,
            state.password,
          ))
              .match(
            (_) async* {
              add(const SignUpEvent.accountCreated());
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
      usernameSaved: (value) async* {
        yield* (await _userRepository.saveDetailsFromUser(value.user)).match(
          (_) async* {
            add(SignUpEvent.userDetailsSaved(value.user));
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
      usernameChanged: (value) async* {
        yield state.copyWith(
          failureOption: const None(),
          username: Username(value.usernameStr),
        );
      },
    );
  }
}
