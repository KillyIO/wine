part of 'settings_database_bloc.dart';

@freezed
abstract class SettingsDatabaseEvent with _$SettingsDatabaseEvent {
  const factory SettingsDatabaseEvent.settingsLaunchedEVT() = SettingsLaunchedEVT;
  const factory SettingsDatabaseEvent.userSignedOutEVT() = UserSignedOutEVT;
  const factory SettingsDatabaseEvent.resetBlocEVT() = ResetBlocEVT;
}
