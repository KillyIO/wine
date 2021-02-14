part of 'settings_miscellaneous_bloc.dart';

/// @nodoc
@freezed
abstract class SettingsMiscellaneousEvent with _$SettingsMiscellaneousEvent {
  /// @nodoc
  const factory SettingsMiscellaneousEvent.settingsLaunchedEvent() =
      SettingsLaunchedEvent;
}
