part of 'settings_outlier_bloc.dart';

@freezed
abstract class SettingsOutlierState with _$SettingsOutlierState {
  const factory SettingsOutlierState({
    @required String appName,
    @required String appVersion,
  }) = _SettingsOutlierState;

  factory SettingsOutlierState.initial() => const SettingsOutlierState(
        appName: '',
        appVersion: '',
      );
}
