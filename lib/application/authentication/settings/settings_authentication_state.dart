part of 'settings_authentication_bloc.dart';

/// @nodoc
@freezed
abstract class SettingsAuthenticationState with _$SettingsAuthenticationState {
  /// @nodoc
  const factory SettingsAuthenticationState({
    @required bool isSigningOut,
    @required Option<Either<AuthenticationFailure, Unit>> authenticationOption,
  }) = _SettingsAuthenticationState;

  /// @nodoc
  factory SettingsAuthenticationState.initial() => SettingsAuthenticationState(
        authenticationOption: none(),
        isSigningOut: false,
      );
}
