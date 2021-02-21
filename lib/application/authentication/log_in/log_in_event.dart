part of 'log_in_bloc.dart';

/// @nodoc
@freezed
abstract class LogInEvent with _$LogInEvent {
  /// @nodoc
  const factory LogInEvent.emailChanged(String emailStr) = EmailChanged;

  /// @nodoc
  const factory LogInEvent.passwordChanged(String passwordStr) =
      PasswordChanged;

  /// @nodoc
  const factory LogInEvent.signedIn(User user) = SignedIn;

  /// @nodoc
  const factory LogInEvent.signInWithEmailAndPasswordPressed() =
      LogInWithEmailAndPasswordPressed;

  /// @nodoc
  const factory LogInEvent.signInWithGooglePressed() = LogInWithGooglePressed;

  /// @nodoc
  const factory LogInEvent.userDetailsSaved(User user) = UserDetailsSaved;
}
