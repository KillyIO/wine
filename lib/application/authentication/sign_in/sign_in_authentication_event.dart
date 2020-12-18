part of 'sign_in_authentication_bloc.dart';

/// @nodoc
@freezed
abstract class SignInAuthenticationEvent with _$SignInAuthenticationEvent {
  /// @nodoc
  const factory SignInAuthenticationEvent.emailChangedEVT(String emailStr) =
      EmailChangedEVT;

  /// @nodoc
  const factory SignInAuthenticationEvent.passwordChangedEVT(
    String passwordStr,
  ) = PasswordChangedEVT;

  /// @nodoc
  // ignore: lines_longer_than_80_chars
  const factory SignInAuthenticationEvent.signInWithEmailAndPasswordPressedEVT() =
      SignInWithEmailAndPasswordPressedEVT;

  /// @nodoc
  const factory SignInAuthenticationEvent.signInWithGooglePressedEVT() =
      SignInWithGooglePressedEVT;
}
