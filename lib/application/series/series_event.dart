part of 'series_bloc.dart';

/// @nodoc
@freezed
class SeriesEvent with _$SeriesEvent {
  /// @nodoc
  const factory SeriesEvent.authorLoaded() = AuthorLoaded;

  /// @nodoc
  const factory SeriesEvent.bookmarkButtonPressed({
    required bool isBookmarked,
  }) = BookmarkButtonPressed;

  /// @nodoc
  const factory SeriesEvent.chapterOneLoaded() = ChapterOneLoaded;

  /// @nodoc
  const factory SeriesEvent.launchWithID(
    UniqueID id, {
    Series? series,
  }) = LaunchWithID;

  /// @nodoc
  const factory SeriesEvent.likeButtonPressed({
    required bool isLiked,
  }) = LikeButtonPressed;

  /// @nodoc
  const factory SeriesEvent.likeStatusLoaded() = LikeStatusLoaded;

  /// @nodoc
  const factory SeriesEvent.seriesSet() = SeriesSet;

  /// @nodoc
  const factory SeriesEvent.sessionFetched() = SessionFetched;

  /// @nodoc
  const factory SeriesEvent.settingsFetched() = SettingsFetched;

  /// @nodoc
  const factory SeriesEvent.viewsUpdated() = ViewsUpdated;
}
