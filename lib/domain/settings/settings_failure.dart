import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_failure.freezed.dart';

/// @nodoc
@freezed
class SettingsFailure with _$SettingsFailure {
  /// @nodoc
  const factory SettingsFailure.settingsNotDeleted() = SettingsNotDeleted;

  /// @nodoc
  const factory SettingsFailure.settingsNotFound() = SettingsNotFound;

  /// @nodoc
  const factory SettingsFailure.settingsNotInitialized() =
      SettingsNotInitialized;

  /// @nodoc
  const factory SettingsFailure.settingsNotUpdated() = SettingsNotUpdated;
}
