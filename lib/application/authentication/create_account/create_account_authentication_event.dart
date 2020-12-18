part of 'create_account_authentication_bloc.dart';

/// [CreateAccountAuthenticationBloc] events
@freezed
abstract class CreateAccountAuthenticationEvent
    with _$CreateAccountAuthenticationEvent {
  /// Checks confirmation password's validity in relation to the password.
  const factory CreateAccountAuthenticationEvent.confirmPasswordChangedEVT(
    String confirmPasswordStr,
    String passwordStr,
  ) = ConfirmPasswordChangedEVT;

  /// Triggered when user tap on create account's button.
  /// Checks all credentials' validity and tries to create an account.
  const factory CreateAccountAuthenticationEvent.createAccountEVT() =
      CreateAccountEVT;

  /// Checks email's validity.
  const factory CreateAccountAuthenticationEvent.emailChangedEVT(
      String emailStr) = EmailChangedEVT;

  /// Checks password's validity.
  const factory CreateAccountAuthenticationEvent.passwordChangedEVT(
      String passwordStr) = PasswordChangedEVT;

  /// Send a confirmation ewmail to user email on button tap.
  const factory CreateAccountAuthenticationEvent.resendVerificationEmailEVT() =
      ResendVerificationEmailEVT;

  /// Checks username's validity.
  const factory CreateAccountAuthenticationEvent.usernameChangedEVT(
      String usernameStr) = UsernameChangedEVT;
}
