part of 'series_bloc.dart';

/// @nodoc
@freezed
class SeriesEvent with _$SeriesEvent {
  /// @nodoc
  const factory SeriesEvent.authorLoaded() = AuthorLoaded;

  /// @nodoc
  const factory SeriesEvent.bookmarkButtonPressed({
    required bool bookmarked,
  }) = BookmarkButtonPressed;

  /// @nodoc
  const factory SeriesEvent.dataSet() = DataSet;

  /// @nodoc
  const factory SeriesEvent.launchWithID(
    UniqueID id, {
    Series? series,
  }) = LaunchWithID;

  /// @nodoc
  const factory SeriesEvent.likeButtonPressed({
    required bool liked,
  }) = LikeButtonPressed;

  /// @nodoc
  const factory SeriesEvent.seriesViewsUpdated() = SeriesViewsUpdated;

  /// @nodoc
  const factory SeriesEvent.sessionFetched() = SessionFetched;

  /// @nodoc
  const factory SeriesEvent.settingsFetched() = SettingsFetched;
}
