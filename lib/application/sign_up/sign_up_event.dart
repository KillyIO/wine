part of 'sign_up_bloc.dart';

@freezed
class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.signUpPressed() = SignUpPressed;

  const factory SignUpEvent.usernameAvailabilityConfirmed() =
      UsernameAvailabilityConfirmed;

  const factory SignUpEvent.accountCreated() = AccountCreated;

  const factory SignUpEvent.usernameSaved(User user) = UsernameSaved;

  const factory SignUpEvent.userDetailsSaved(User user) = UserDetailsSaved;

  const factory SignUpEvent.sessionInserted() = SessionInserted;

  const factory SignUpEvent.defaultCoversLoaded(
    List<DefaultCover> defaultCovers,
  ) = DefaultCoversLoaded;

  const factory SignUpEvent.confirmPasswordChanged(String confirmPasswordStr) =
      ConfirmPasswordChanged;

  const factory SignUpEvent.emailAddressChanged(String emailAddressStr) =
      EmailAddressChanged;

  const factory SignUpEvent.passwordChanged(String passwordStr) =
      PasswordChanged;

  const factory SignUpEvent.usernameChanged(String usernameStr) =
      UsernameChanged;
}
