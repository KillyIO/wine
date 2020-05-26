part of 'series_database_bloc.dart';

@freezed
abstract class SeriesDatabaseState with _$SeriesDatabaseState {
  const factory SeriesDatabaseState({
    @required Session session,
    @required Series series,
    @required Chapter chapterOne,
    @required bool isLiked,
    @required bool isBookmarked,
    @required int viewsCount,
    @required int likesCount,
    @required int bookmarksCount,
    @required Map<String, String> genresMap,
    @required Map<String, String> languagesMap,
    @required
        Option<Either<DatabaseFailure, dynamic>> databaseFailureOrSuccessOption,
  }) = _SeriesDatabaseState;

  factory SeriesDatabaseState.initial() => SeriesDatabaseState(
        session: Session(),
        series: Series(),
        chapterOne: Chapter(),
        isLiked: false,
        isBookmarked: false,
        viewsCount: 0,
        likesCount: 0,
        bookmarksCount: 0,
        genresMap: <String, String>{},
        languagesMap: <String, String>{},
        databaseFailureOrSuccessOption: none(),
      );
}
