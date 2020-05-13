part of 'settings_authentication_bloc.dart';

@freezed
abstract class SettingsAuthenticationState with _$SettingsAuthenticationState {
  const factory SettingsAuthenticationState({
    @required bool isSigningOut,
    @required bool isUserSignedOut,
    @required
        Option<Either<AuthenticationFailure, dynamic>>
            authenticationFailureOrSuccessOption,
  }) = _SettingsAuthenticationState;

  factory SettingsAuthenticationState.initial() => SettingsAuthenticationState(
        isSigningOut: false,
        isUserSignedOut: false,
        authenticationFailureOrSuccessOption: none(),
      );
}
