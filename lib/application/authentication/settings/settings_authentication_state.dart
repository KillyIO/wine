part of 'settings_authentication_bloc.dart';

/// @nodoc
@freezed
abstract class SettingsAuthenticationState with _$SettingsAuthenticationState {
  /// @nodoc
  const factory SettingsAuthenticationState({
    @required bool isSigningOut,
    @required
        Option<Either<AuthenticationFailure, AuthenticationSuccess>>
            authenticationFailureOrSuccessOption,
  }) = _SettingsAuthenticationState;

  /// @nodoc
  factory SettingsAuthenticationState.initial() => SettingsAuthenticationState(
        authenticationFailureOrSuccessOption: none(),
        isSigningOut: false,
      );
}
