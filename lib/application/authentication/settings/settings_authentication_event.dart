part of 'settings_authentication_bloc.dart';

@freezed
abstract class SettingsAuthenticationEvent with _$SettingsAuthenticationEvent {
  const factory SettingsAuthenticationEvent.resetBlocEVT() = ResetBlocEVT;
  const factory SettingsAuthenticationEvent.signOutPressedEVT() = SignOutPressedEVT;
}
