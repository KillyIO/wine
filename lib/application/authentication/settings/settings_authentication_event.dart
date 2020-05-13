part of 'settings_authentication_bloc.dart';

@freezed
abstract class SettingsAuthenticationEvent with _$SettingsAuthenticationEvent {
  const factory SettingsAuthenticationEvent.signOutPressed() = SignOutPressed;
  const factory SettingsAuthenticationEvent.resetSettingsAuthenticationBloc() =
      ResetSettingsAuthenticationBloc;
}
