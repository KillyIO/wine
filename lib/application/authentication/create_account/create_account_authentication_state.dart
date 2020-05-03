part of 'create_account_authentication_bloc.dart';

@freezed
abstract class CreateAccountAuthenticationState
    with _$CreateAccountAuthenticationState {
  const factory CreateAccountAuthenticationState({
    @required EmailAddress emailAddress,
    @required Password password,
    @required Password confirmPassword,
    @required Username username,
    @required bool showEmailErrorMessage,
    @required bool showPasswordErrorMessage,
    @required bool showConfirmPasswordErrorMessage,
    @required bool showUsernameErrorMessage,
    @required bool isSubmitting,
    @required bool isVerificationEmailSent,
    @required
        Option<Either<AuthenticationFailure, dynamic>>
            authenticationFailureOrSuccessOption,
  }) = _CreateAccountAuthenticationState;

  factory CreateAccountAuthenticationState.initial() =>
      CreateAccountAuthenticationState(
        emailAddress: EmailAddress(''),
        password: Password(''),
        confirmPassword: Password(''),
        username: Username(''),
        showEmailErrorMessage: false,
        showPasswordErrorMessage: false,
        showConfirmPasswordErrorMessage: false,
        showUsernameErrorMessage: false,
        isSubmitting: false,
        isVerificationEmailSent: false,
        authenticationFailureOrSuccessOption: none(),
      );
}
