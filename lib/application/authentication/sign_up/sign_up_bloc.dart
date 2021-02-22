import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:wine/domain/authentication/authentication_failure.dart';

import 'package:wine/domain/authentication/email_address.dart';
import 'package:wine/domain/authentication/i_authentication_facade.dart';
import 'package:wine/domain/authentication/password.dart';
import 'package:wine/domain/authentication/username.dart';
import 'package:wine/domain/models/user.dart';
import 'package:wine/domain/session/session_failure.dart';
import 'package:wine/domain/user/user_failure.dart';

part 'sign_up_bloc.freezed.dart';
part 'sign_up_event.dart';
part 'sign_up_state.dart';

/// @nodoc
@injectable
class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  /// @nodoc
  SignUpBloc(this._authenticationFacade) : super(SignUpState.initial());

  final IAuthenticationFacade _authenticationFacade;

  @override
  Stream<SignUpState> mapEventToState(SignUpEvent event) async* {
    yield* event.map(
      accountCreated: (value) async* {},
      confirmPasswordChanged: (value) async* {
        yield state.copyWith(
          authenticationOption: none(),
          confirmPassword: Password(
            value.confirmPasswordStr,
            value.passwordStr,
          ),
        );
      },
      emailChanged: (value) async* {
        yield state.copyWith(
          authenticationOption: none(),
          emailAddress: EmailAddress(value.emailStr),
        );
      },
      passwordChanged: (value) async* {
        yield state.copyWith(
          authenticationOption: none(),
          password: Password(value.passwordStr),
        );
      },
      resendVerificationEmail: (value) async* {
        Either<AuthenticationFailure, Unit> failureOrSuccess;

        failureOrSuccess =
            await _authenticationFacade.resendVerificationEmail();

        yield state.copyWith(authenticationOption: optionOf(failureOrSuccess));
      },
      signUpPressed: (value) async* {
        Either<AuthenticationFailure, dynamic> failureOrSuccess;

        var isUsernameValid = state.username.isValid();
        var isUsernameAvailable = false;

        if (isUsernameValid) {
          yield state.copyWith(
            authenticationOption: none(),
            isProcessing: true,
          );

          failureOrSuccess =
              await _authenticationFacade.isUsernameAvailable(state.username)
                ..fold(
                  (_) {},
                  (success) => isUsernameAvailable = success,
                );
        }

        final isEmailValid = state.emailAddress.isValid();
        final isPasswordValid = state.password.isValid();
        final isConfirmPasswordValid = state.confirmPassword.isValid();

        if (isEmailValid &&
            isPasswordValid &&
            isConfirmPasswordValid &&
            isUsernameValid) {
          failureOrSuccess = await _authenticationFacade
              .convertWithEmailAndPassword(state.emailAddress, state.password);

          failureOrSuccess.fold(
            (_) {},
            (success) {
              final user = (success as User).copyWith(
                username: state.username
                    .getOrCrash()
                    .trim()
                    .replaceAll(RegExp('[ -]'), '_'),
                name: state.username.getOrCrash().trim(),
                createdAt: DateTime.now().millisecondsSinceEpoch,
                updatedAt: DateTime.now().millisecondsSinceEpoch,
              );

              failureOrSuccess = right(user);
            },
          );
        }

        yield state.copyWith(
          authenticationOption: optionOf(failureOrSuccess),
          isProcessing: false,
          showErrorMessages: true,
        );
      },
      userDetailsSaved: (value) async* {},
      usernameChanged: (value) async* {
        yield state.copyWith(
          authenticationOption: none(),
          username: Username(value.usernameStr),
        );
      },
      verifyEmailLaunched: (value) async* {},
    );
  }
}
