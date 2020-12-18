part of 'settings_database_bloc.dart';

/// @nodoc
@freezed
abstract class SettingsDatabaseEvent with _$SettingsDatabaseEvent {
  /// @nodoc
  const factory SettingsDatabaseEvent.resetBlocEVT() = ResetBlocEVT;

  /// @nodoc
  const factory SettingsDatabaseEvent.settingsLaunchedEVT() =
      SettingsLaunchedEVT;

  /// @nodoc
  const factory SettingsDatabaseEvent.userSignedOutEVT() = UserSignedOutEVT;
}
