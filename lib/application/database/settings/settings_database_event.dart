part of 'settings_database_bloc.dart';

@freezed
abstract class SettingsDatabaseEvent with _$SettingsDatabaseEvent {
  const factory SettingsDatabaseEvent.settingsLaunched() = SettingsLaunched;
  const factory SettingsDatabaseEvent.userSignedOut() = UserSignedOut;
  const factory SettingsDatabaseEvent.resetSettingsDatabaseBloc() =
      ResetSettingsDatabaseBloc;
}
