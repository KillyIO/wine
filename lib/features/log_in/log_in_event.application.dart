part of 'log_in_bloc.application.dart';

/// @nodoc
@freezed
class LogInEvent with _$LogInEvent {
  /// @nodoc
  const factory LogInEvent.logInWithEmailAndPasswordPressed() =
      LogInWithEmailAndPasswordPressed;

  /// @nodoc
  const factory LogInEvent.loggedInWithEmailAndPassword() =
      LoggedInWithEmailAndPassword;

  /// @nodoc
  const factory LogInEvent.userLoaded(User user) = UserLoaded;

  /// @nodoc
  const factory LogInEvent.userDetailsSaved(User user) = UserDetailsSaved;

  /// @nodoc
  const factory LogInEvent.sessionInserted() = SessionInserted;

  /// @nodoc
  const factory LogInEvent.defaultCoversLoaded(
    List<DefaultCover> defaultCovers,
  ) = DefaultCoversLoaded;

  /// @nodoc
  const factory LogInEvent.logInWithGooglePressed() = LogInWithGooglePressed;

  /// @nodoc
  const factory LogInEvent.loggedInWithGoogle() = LoggedInWithGoogle;

  /// @nodoc
  const factory LogInEvent.userNotFound(User user) = UserNotFound;

  /// @nodoc
  const factory LogInEvent.usernameAvailabilityConfirmed(User user) =
      UsernameAvailabilityConfirmed;

  /// @nodoc
  const factory LogInEvent.usernameSaved(User user) = UsernameSaved;

  /// @nodoc
  const factory LogInEvent.customUsernameGenerated(User user) =
      CustomUsernameGenerated;

  /// @nodoc
  const factory LogInEvent.credentialAlreadyInUse() = CredentialAlreadyInUse;

  /// @nodoc
  const factory LogInEvent.emailAddressChanged(String emailAddressStr) =
      EmailAddressChanged;

  /// @nodoc
  const factory LogInEvent.passwordChanged(String passwordStr) =
      PasswordChanged;
}
