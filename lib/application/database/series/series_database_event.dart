part of 'series_database_bloc.dart';

@freezed
abstract class SeriesDatabaseEvent with _$SeriesDatabaseEvent {
  const factory SeriesDatabaseEvent.authorLoadedEVT() = AuthorLoadedEVT;
  const factory SeriesDatabaseEvent.bookmarkButtonPressedEVT() = BookmarkButtonPressedEVT;
  const factory SeriesDatabaseEvent.bookmarksUpdatedEVT() = BookmarksUpdatedEVT;
  const factory SeriesDatabaseEvent.firstChapterMinifiedLoadedEVT() = FirstChapterMinifiedLoadedEVT;
  const factory SeriesDatabaseEvent.likeButtonPressedEVT() = LikeButtonPressedEVT;
  const factory SeriesDatabaseEvent.likesUpdatedEVT() = LikesUpdatedEVT;
  const factory SeriesDatabaseEvent.seriesBookmarkStatusLoadedEVT() = SeriesBookmarkStatusLoadedEVT;
  const factory SeriesDatabaseEvent.seriesLikesLoadedEVT() = SeriesLikesLoadedEVT;
  const factory SeriesDatabaseEvent.seriesLikeStatusLoadedEVT() = SeriesLikeStatusLoadedEVT;
  const factory SeriesDatabaseEvent.seriesLoadedEVT() = SeriesLoadedEVT;
  const factory SeriesDatabaseEvent.seriesPageLaunchedEVT(
    String seriesUid,
    BuildContext context,
  ) = SeriesPageLaunchedEVT;
  const factory SeriesDatabaseEvent.seriesViewsLoadedEVT() = SeriesViewsLoadedEVT;
  const factory SeriesDatabaseEvent.seriesViewsUpdatedEVT() = SeriesViewsUpdatedEVT;
  const factory SeriesDatabaseEvent.sessionFetchedEVT(Session session) = SessionFetchedEVT;
  const factory SeriesDatabaseEvent.showMoreSummaryButtonPressedEVT() = ShowMoreSummaryButtonPressedEVT;
}
