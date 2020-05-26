part of 'series_database_bloc.dart';

@freezed
abstract class SeriesDatabaseEvent with _$SeriesDatabaseEvent {
  const factory SeriesDatabaseEvent.seriesPageLaunched({
    Series series,
    BuildContext context,
  }) = SeriesPageLaunched;
  const factory SeriesDatabaseEvent.likeButtonPressed() = LikeButtonPressed;
  const factory SeriesDatabaseEvent.bookmarkButtonPressed() =
      BookmarkButtonPressed;
  const factory SeriesDatabaseEvent.showMoreSummaryButtonPressed() =
      ShowMoreSummaryButtonPressed;
  const factory SeriesDatabaseEvent.readChapterOneButtonPressed() =
      ReadChapterOneButtonPressed;
}
