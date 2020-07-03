part of 'settings_authentication_bloc.dart';

@freezed
abstract class SettingsAuthenticationState with _$SettingsAuthenticationState {
  const factory SettingsAuthenticationState({
    @required bool isSigningOut,
    @required Option<Either<AuthenticationFailure, AuthenticationSuccess>> authenticationFailureOrSuccessOption,
  }) = _SettingsAuthenticationState;

  factory SettingsAuthenticationState.initial() => SettingsAuthenticationState(
        authenticationFailureOrSuccessOption: none(),
        isSigningOut: false,
      );
}
