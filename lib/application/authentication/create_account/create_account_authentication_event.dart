part of 'create_account_authentication_bloc.dart';

@freezed
abstract class CreateAccountAuthenticationEvent
    with _$CreateAccountAuthenticationEvent {
  const factory CreateAccountAuthenticationEvent.emailChanged(String emailStr) =
      EmailChanged;
  const factory CreateAccountAuthenticationEvent.passwordChanged(
    String passwordStr,
  ) = PasswordChanged;
  const factory CreateAccountAuthenticationEvent.confirmPasswordChanged(
    String confirmPasswordStr,
  ) = ConfirmPasswordChanged;
  const factory CreateAccountAuthenticationEvent.usernameChanged(
    String usernameStr,
  ) = UsernameChanged;
  const factory CreateAccountAuthenticationEvent.createAccount() =
      CreateAccount;
  const factory CreateAccountAuthenticationEvent.resendVerificationEmail() =
      ResendVerificationEmail;
}
