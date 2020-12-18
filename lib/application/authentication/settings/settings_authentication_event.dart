part of 'settings_authentication_bloc.dart';

/// @nodoc
@freezed
abstract class SettingsAuthenticationEvent with _$SettingsAuthenticationEvent {
  /// @nodoc
  const factory SettingsAuthenticationEvent.resetBlocEVT() = ResetBlocEVT;

  /// @nodoc
  const factory SettingsAuthenticationEvent.signOutPressedEVT() =
      SignOutPressedEVT;
}
