part of 'settings_other_bloc.dart';

/// @nodoc
@freezed
abstract class SettingsOtherState with _$SettingsOtherState {
  /// @nodoc
  const factory SettingsOtherState({
    @required String appName,
    @required String appVersion,
  }) = _SettingsOtherState;

  /// @nodoc
  factory SettingsOtherState.initial() => const SettingsOtherState(
        appName: '',
        appVersion: '',
      );
}
