part of 'sign_up_bloc.dart';

/// @nodoc
@freezed
abstract class SignUpEvent with _$SignUpEvent {
  /// @nodoc
  const factory SignUpEvent.confirmPasswordChanged(
    String confirmPasswordStr,
    String passwordStr,
  ) = ConfirmPasswordChanged;

  /// @nodoc
  const factory SignUpEvent.emailChanged(String emailStr) = EmailChanged;

  /// @nodoc
  const factory SignUpEvent.passwordChanged(String passwordStr) =
      PasswordChanged;

  /// @nodoc
  const factory SignUpEvent.resendVerificationEmail() = ResendVerificationEmail;

  /// @nodoc
  const factory SignUpEvent.signUpPressed() = SignUpPressed;

  /// @nodoc
  const factory SignUpEvent.usernameChanged(String usernameStr) =
      UsernameChanged;
}
