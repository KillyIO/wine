part of 'sign_in_authentication_bloc.dart';

@freezed
abstract class SignInAuthenticationEvent with _$SignInAuthenticationEvent {
  const factory SignInAuthenticationEvent.emailChangedEVT(String emailStr) = EmailChangedEVT;
  const factory SignInAuthenticationEvent.passwordChangedEVT(String passwordStr) = PasswordChangedEVT;
  const factory SignInAuthenticationEvent.signInWithEmailAndPasswordPressedEVT() = SignInWithEmailAndPasswordPressedEVT;
  const factory SignInAuthenticationEvent.signInWithGooglePressedEVT() = SignInWithGooglePressedEVT;
}
