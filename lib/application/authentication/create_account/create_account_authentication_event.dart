part of 'create_account_authentication_bloc.dart';

@freezed
abstract class CreateAccountAuthenticationEvent with _$CreateAccountAuthenticationEvent {
  const factory CreateAccountAuthenticationEvent.confirmPasswordChangedEVT(
    String confirmPasswordStr,
    String passwordStr,
  ) = ConfirmPasswordChangedEVT;
  const factory CreateAccountAuthenticationEvent.createAccountEVT() = CreateAccountEVT;
  const factory CreateAccountAuthenticationEvent.emailChangedEVT(String emailStr) = EmailChangedEVT;
  const factory CreateAccountAuthenticationEvent.passwordChangedEVT(String passwordStr) = PasswordChangedEVT;
  const factory CreateAccountAuthenticationEvent.resendVerificationEmailEVT() = ResendVerificationEmailEVT;
  const factory CreateAccountAuthenticationEvent.usernameChangedEVT(String usernameStr) = UsernameChangedEVT;
}
