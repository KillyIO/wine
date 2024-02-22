part of 'log_in_bloc.dart';

@freezed
class LogInEvent with _$LogInEvent {
  const factory LogInEvent.logInWithEmailAndPasswordPressed() =
      LogInWithEmailAndPasswordPressed;

  const factory LogInEvent.loggedInWithEmailAndPassword() =
      LoggedInWithEmailAndPassword;

  const factory LogInEvent.userLoaded(User user) = UserLoaded;

  const factory LogInEvent.userDetailsSaved(User user) = UserDetailsSaved;

  const factory LogInEvent.sessionInserted() = SessionInserted;

  const factory LogInEvent.defaultCoversLoaded(
    List<DefaultCover> defaultCovers,
  ) = DefaultCoversLoaded;

  const factory LogInEvent.logInWithGooglePressed() = LogInWithGooglePressed;

  const factory LogInEvent.loggedInWithGoogle() = LoggedInWithGoogle;

  const factory LogInEvent.userNotFound(User user) = UserNotFound;

  const factory LogInEvent.usernameAvailabilityConfirmed(User user) =
      UsernameAvailabilityConfirmed;

  const factory LogInEvent.usernameSaved(User user) = UsernameSaved;

  const factory LogInEvent.customUsernameGenerated(User user) =
      CustomUsernameGenerated;

  const factory LogInEvent.credentialAlreadyInUse() = CredentialAlreadyInUse;

  const factory LogInEvent.emailAddressChanged(String emailAddressStr) =
      EmailAddressChanged;

  const factory LogInEvent.passwordChanged(String passwordStr) =
      PasswordChanged;
}
