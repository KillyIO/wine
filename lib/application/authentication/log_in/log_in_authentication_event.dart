part of 'log_in_authentication_bloc.dart';

/// @nodoc
@freezed
abstract class LogInAuthenticationEvent with _$LogInAuthenticationEvent {
  /// @nodoc
  const factory LogInAuthenticationEvent.emailChanged(String emailStr) =
      EmailChanged;

  /// @nodoc
  const factory LogInAuthenticationEvent.passwordChanged(String passwordStr) =
      PasswordChanged;

  /// @nodoc
  // ignore: lines_longer_than_80_chars
  const factory LogInAuthenticationEvent.signInWithEmailAndPasswordPressed() =
      LogInWithEmailAndPasswordPressed;

  /// @nodoc
  const factory LogInAuthenticationEvent.signInWithGooglePressed() =
      LogInWithGooglePressed;
}
