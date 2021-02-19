import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import 'package:wine/domain/authentication/email_address.dart';
import 'package:wine/domain/authentication/failures/authentication_failure.dart';
import 'package:wine/domain/authentication/i_authentication_facade.dart';
import 'package:wine/domain/authentication/password.dart';
import 'package:wine/domain/authentication/username.dart';
import 'package:wine/domain/models/user.dart';

part 'sign_up_authentication_bloc.freezed.dart';
part 'sign_up_authentication_event.dart';
part 'sign_up_authentication_state.dart';

/// @nodoc
@injectable
class SignUpAuthenticationBloc
    extends Bloc<SignUpAuthenticationEvent, SignUpAuthenticationState> {
  /// @nodoc
  SignUpAuthenticationBloc(this._authenticationFacade)
      : super(SignUpAuthenticationState.initial());

  final IAuthenticationFacade _authenticationFacade;

  @override
  Stream<SignUpAuthenticationState> mapEventToState(
    SignUpAuthenticationEvent event,
  ) async* {
    yield* event.map(
      confirmPasswordChanged: (event) async* {
        yield state.copyWith(
          authenticationOption: none(),
          confirmPassword: Password(
            event.confirmPasswordStr,
            event.passwordStr,
          ),
        );
      },
      emailChanged: (event) async* {
        yield state.copyWith(
          authenticationOption: none(),
          emailAddress: EmailAddress(event.emailStr),
        );
      },
      passwordChanged: (event) async* {
        yield state.copyWith(
          authenticationOption: none(),
          password: Password(event.passwordStr),
        );
      },
      resendVerificationEmail: (event) async* {
        Either<AuthenticationFailure, Unit> failureOrSuccess;

        failureOrSuccess =
            await _authenticationFacade.resendVerificationEmail();

        yield state.copyWith(authenticationOption: optionOf(failureOrSuccess));
      },
      signUpPressed: (event) async* {
        Either<AuthenticationFailure, dynamic> failureOrSuccess;

        var isUsernameValid = state.username.isValid();
        var isUsernameAvailable = false;

        if (isUsernameValid) {
          yield state.copyWith(
            authenticationOption: none(),
            isSubmitting: true,
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
          isSubmitting: false,
          showErrorMessages: true,
        );
      },
      usernameChanged: (event) async* {
        yield state.copyWith(
          authenticationOption: none(),
          username: Username(event.usernameStr),
        );
      },
    );
  }
}
