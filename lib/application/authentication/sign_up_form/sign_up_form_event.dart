part of 'sign_up_form_bloc.dart';

/// @nodoc
@freezed
abstract class SignUpFormEvent with _$SignUpFormEvent {
  /// @nodoc
  const factory SignUpFormEvent.confirmPasswordChanged(
    String confirmPasswordStr,
    String passwordStr,
  ) = ConfirmPasswordChanged;

  /// @nodoc
  const factory SignUpFormEvent.emailChanged(String emailStr) = EmailChanged;

  /// @nodoc
  const factory SignUpFormEvent.passwordChanged(String passwordStr) =
      PasswordChanged;

  /// @nodoc
  const factory SignUpFormEvent.resendVerificationEmail() =
      ResendVerificationEmail;

  /// @nodoc
  const factory SignUpFormEvent.signUpPressed() = SignUpPressed;

  /// @nodoc
  const factory SignUpFormEvent.usernameChanged(String usernameStr) =
      UsernameChanged;
}
