part of 'log_in_bloc.dart';

/// @nodoc
@freezed
class LogInEvent with _$LogInEvent {
  /// @nodoc
  const factory LogInEvent.emailAddressChanged(String emailAddressStr) =
      EmailAddressChanged;

  /// @nodoc
  const factory LogInEvent.loggedIn() = LoggedIn;

  /// @nodoc
  const factory LogInEvent.logInWithEmailAndPasswordPressed() =
      LogInWithEmailAndPasswordPressed;

  /// @nodoc
  const factory LogInEvent.logInWithGooglePressed() = LogInWithGooglePressed;

  /// @nodoc
  const factory LogInEvent.passwordChanged(String passwordStr) =
      PasswordChanged;

  /// @nodoc
  const factory LogInEvent.userDetailsSaved(User user) = UserDetailsSaved;
}
