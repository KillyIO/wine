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

part 'create_account_authentication_event.dart';
part 'create_account_authentication_state.dart';

part 'create_account_authentication_bloc.freezed.dart';

@injectable
class CreateAccountAuthenticationBloc extends Bloc<
    CreateAccountAuthenticationEvent, CreateAccountAuthenticationState> {
  final IAuthenticationFacade _authenticationFacade;

  CreateAccountAuthenticationBloc(this._authenticationFacade);

  @override
  CreateAccountAuthenticationState get initialState =>
      CreateAccountAuthenticationState.initial();

  @override
  Stream<CreateAccountAuthenticationState> mapEventToState(
    CreateAccountAuthenticationEvent event,
  ) async* {
    yield* event.map(
      emailChanged: (event) async* {
        yield state.copyWith(
          emailAddress: EmailAddress(event.emailStr),
          authenticationFailureOrSuccessOption: none(),
        );
      },
      passwordChanged: (event) async* {
        yield state.copyWith(
          password: Password(event.passwordStr),
          authenticationFailureOrSuccessOption: none(),
        );
      },
      confirmPasswordChanged: (event) async* {
        yield state.copyWith(
          confirmPassword: Password(event.confirmPasswordStr),
          authenticationFailureOrSuccessOption: none(),
        );
      },
      usernameChanged: (event) async* {
        yield state.copyWith(
          username: Username(event.usernameStr),
          authenticationFailureOrSuccessOption: none(),
        );
      },
      createAccount: (event) async* {
        Either<AuthenticationFailure, dynamic> failureOrSuccess;

        bool isUsernameValid = state.username.isValid();

        if (isUsernameValid) {
          yield state.copyWith(
            isSubmitting: true,
            authenticationFailureOrSuccessOption: none(),
          );
          failureOrSuccess = await _authenticationFacade.isUsernameAvailable(
            username: state.username,
          );
          isUsernameValid = failureOrSuccess?.isRight();
        }

        final isEmailValid = state.emailAddress.isValid();
        final isPasswordValid = state.password.isValid();
        final isConfirmPasswordValid = state.confirmPassword.isValid() &&
            state.confirmPassword == state.password;

        if (isEmailValid &&
            isPasswordValid &&
            isConfirmPasswordValid &&
            isUsernameValid) {
          failureOrSuccess =
              await _authenticationFacade.convertWithEmailAndPassword(
            emailAddress: state.emailAddress,
            password: state.password,
          );

          failureOrSuccess.fold(
            (_) {},
            (right) {
              if (right is User) {
                right.username = state.username
                    .getOrCrash()
                    .trim()
                    .replaceAll(RegExp(r'[ -]'), '_');
                right.name = state.username.getOrCrash().trim();
                right.createdAt = DateTime.now().millisecondsSinceEpoch;
                right.updatedAt = DateTime.now().millisecondsSinceEpoch;
              }
            },
          );
        }

        yield state.copyWith(
          isSubmitting: false,
          showEmailErrorMessage: !isEmailValid,
          showPasswordErrorMessage: !isPasswordValid,
          showConfirmPasswordErrorMessage: !isConfirmPasswordValid,
          showUsernameErrorMessage: !isUsernameValid,
          authenticationFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
