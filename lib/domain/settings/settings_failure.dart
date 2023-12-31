import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_failure.freezed.dart';

@freezed
class SettingsFailure with _$SettingsFailure {
  const factory SettingsFailure.settingsNotDeleted() = SettingsNotDeleted;

  const factory SettingsFailure.settingsNotFound() = SettingsNotFound;

  const factory SettingsFailure.settingsNotInitialized() =
      SettingsNotInitialized;

  const factory SettingsFailure.settingsNotUpdated() = SettingsNotUpdated;
}
