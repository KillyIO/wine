part of 'settings_miscellaneous_bloc.dart';

/// @nodoc
@freezed
abstract class SettingsMiscellaneousState with _$SettingsMiscellaneousState {
  /// @nodoc
  const factory SettingsMiscellaneousState({
    @required String appName,
    @required String appVersion,
  }) = _SettingMmiscellaneousState;

  /// @nodoc
  factory SettingsMiscellaneousState.initial() =>
      const SettingsMiscellaneousState(
        appName: '',
        appVersion: '',
      );
}
