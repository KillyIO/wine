part of 'settings_outlier_bloc.dart';

@freezed
abstract class SettingsOutlierEvent with _$SettingsOutlierEvent {
  const factory SettingsOutlierEvent.getAppDetailsEVT() = GetAppDetailsEVT;
}
