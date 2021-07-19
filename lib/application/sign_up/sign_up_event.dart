part of 'sign_up_bloc.dart';

/// @nodoc
@freezed
class SignUpEvent with _$SignUpEvent {
  /// @nodoc
  const factory SignUpEvent.accountCreated() = AccountCreated;

  /// @nodoc
  const factory SignUpEvent.confirmPasswordChanged(String confirmPasswordStr) =
      ConfirmPasswordChanged;

  /// @nodoc
  const factory SignUpEvent.emailAddressChanged(String emailAddressStr) =
      EmailAddressChanged;

  /// @nodoc
  const factory SignUpEvent.passwordChanged(String passwordStr) =
      PasswordChanged;

  /// @nodoc
  const factory SignUpEvent.signUpPressed() = SignUpPressed;

  /// @nodoc
  const factory SignUpEvent.userDetailsSaved(User user) = UserDetailsSaved;

  /// @nodoc
  const factory SignUpEvent.usernameAvailabilityConfirmed() =
      UsernameAvailabilityConfirmed;

  /// @nodoc
  const factory SignUpEvent.usernameSaved(User user) = UsernameSaved;

  /// @nodoc
  const factory SignUpEvent.usernameChanged(String usernameStr) =
      UsernameChanged;
}
