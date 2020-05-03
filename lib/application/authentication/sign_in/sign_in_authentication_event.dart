part of 'sign_in_authentication_bloc.dart';

@freezed
abstract class SignInAuthenticationEvent with _$SignInAuthenticationEvent {
  const factory SignInAuthenticationEvent.emailChanged(String emailStr) =
      EmailChanged;
  const factory SignInAuthenticationEvent.passwordChanged(String passwordStr) =
      PasswordChanged;
  const factory SignInAuthenticationEvent.signInWithEmailAndPasswordPressed() =
      SignInWithEmailAndPasswordPressed;
  const factory SignInAuthenticationEvent.signInWithGooglePressed() =
      SignInWithGooglePressed;
}
