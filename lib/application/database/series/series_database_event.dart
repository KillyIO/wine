part of 'series_database_bloc.dart';

/// @nodoc
@freezed
abstract class SeriesDatabaseEvent with _$SeriesDatabaseEvent {
  /// @nodoc
  const factory SeriesDatabaseEvent.bookmarkButtonPressedEVT() =
      BookmarkButtonPressedEVT;

  /// @nodoc
  const factory SeriesDatabaseEvent.configFetchedEVT() = ConfigFetchedEVT;

  /// @nodoc
  const factory SeriesDatabaseEvent.firstChapterLoadedEVT() =
      FirstChapterLoadedEVT;

  /// @nodoc
  const factory SeriesDatabaseEvent.likeButtonPressedEVT() =
      LikeButtonPressedEVT;

  /// @nodoc
  const factory SeriesDatabaseEvent.seriesBookmarksLoadedEVT() =
      SeriesBookmarksLoadedEVT;

  /// @nodoc
  const factory SeriesDatabaseEvent.seriesLikesLoadedEVT() =
      SeriesLikesLoadedEVT;

  /// @nodoc
  const factory SeriesDatabaseEvent.seriesLikeStatusLoadedEVT() =
      SeriesLikeStatusLoadedEVT;

  /// @nodoc
  const factory SeriesDatabaseEvent.seriesLaunchedEVT(Series series) =
      SeriesLaunchedEVT;

  /// @nodoc
  const factory SeriesDatabaseEvent.seriesViewsLoadedEVT() =
      SeriesViewsLoadedEVT;

  /// @nodoc
  const factory SeriesDatabaseEvent.seriesViewsUpdatedEVT() =
      SeriesViewsUpdatedEVT;

  /// @nodoc
  const factory SeriesDatabaseEvent.sessionFetchedEVT() = SessionFetchedEVT;
}
