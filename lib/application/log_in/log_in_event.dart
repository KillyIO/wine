part of 'log_in_bloc.dart';

/// @nodoc
@freezed
class LogInEvent with _$LogInEvent {
  /// @nodoc
  const factory LogInEvent.emailChanged(String emailStr) = EmailChanged;

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

  /// @nodoc
  const factory LogInEvent.userDetailsSaved() = UserDetailsSaved;
}
