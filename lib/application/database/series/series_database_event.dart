part of 'series_database_bloc.dart';

@freezed
abstract class SeriesDatabaseEvent with _$SeriesDatabaseEvent {
  const factory SeriesDatabaseEvent.seriesPageLaunched({
    @required Series series,
    @required String placeholderUrl,
    String username,
    BuildContext context,
  }) = SeriesPageLaunched;
  const factory SeriesDatabaseEvent.likeButtonPressed() = LikeButtonPressed;
  const factory SeriesDatabaseEvent.bookmarkButtonPressed() =
      BookmarkButtonPressed;
  const factory SeriesDatabaseEvent.showMoreSummaryButtonPressed() =
      ShowMoreSummaryButtonPressed;
}
