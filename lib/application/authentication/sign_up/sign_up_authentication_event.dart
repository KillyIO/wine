part of 'sign_up_authentication_bloc.dart';

/// @nodoc
@freezed
abstract class SignUpAuthenticationEvent with _$SignUpAuthenticationEvent {
  /// @nodoc
  const factory SignUpAuthenticationEvent.confirmPasswordChanged(
    String confirmPasswordStr,
    String passwordStr,
  ) = ConfirmPasswordChanged;

  /// @nodoc
  const factory SignUpAuthenticationEvent.emailChanged(String emailStr) =
      EmailChanged;

  /// @nodoc
  const factory SignUpAuthenticationEvent.passwordChanged(String passwordStr) =
      PasswordChanged;

  /// @nodoc
  const factory SignUpAuthenticationEvent.resendVerificationEmail() =
      ResendVerificationEmail;

  /// @nodoc
  const factory SignUpAuthenticationEvent.signUpPressed() = SignUpPressed;

  /// @nodoc
  const factory SignUpAuthenticationEvent.usernameChanged(String usernameStr) =
      UsernameChanged;
}
