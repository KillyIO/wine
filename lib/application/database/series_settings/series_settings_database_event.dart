part of 'series_settings_database_bloc.dart';

/// @nodoc
@freezed
abstract class SeriesSettingsDatabaseEvent with _$SeriesSettingsDatabaseEvent {
  /// @nodoc
  const factory SeriesSettingsDatabaseEvent.enableBookmarksCountToggledEVT(
    bool value,
  ) = EnableBookmarksCountToggledEVT;

  /// @nodoc
  const factory SeriesSettingsDatabaseEvent.enableLikesCountToggledEVT(
    bool value,
  ) = EnableLikesCountToggledEVT;

  /// @nodoc
  const factory SeriesSettingsDatabaseEvent.enableViewsCountToggledEVT(
    bool value,
  ) = EnableViewsCountToggledEVT;

  /// @nodoc
  const factory SeriesSettingsDatabaseEvent.seriesSettingsLaunchedEVT() =
      SeriesSettingsLaunchedEVT;
}
