part of 'chapter_settings_database_bloc.dart';

/// @nodoc
@freezed
abstract class ChapterSettingsDatabaseEvent
    with _$ChapterSettingsDatabaseEvent {
  /// @nodoc
  const factory ChapterSettingsDatabaseEvent.chapterSettingsLaunchedEVT() =
      ChapterSettingsLaunchedEVT;

  /// @nodoc
  const factory ChapterSettingsDatabaseEvent.enableBookmarksCountToggledEVT(
    bool value,
  ) = EnableBookmarksCountToggledEVT;

  /// @nodoc
  const factory ChapterSettingsDatabaseEvent.enableLikesCountToggledEVT(
    bool value,
  ) = EnableLikesCountToggledEVT;

  /// @nodoc
  const factory ChapterSettingsDatabaseEvent.enableViewsCountToggledEVT(
    bool value,
  ) = EnableViewsCountToggledEVT;
}
