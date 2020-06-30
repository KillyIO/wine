part of 'series_database_bloc.dart';

@freezed
abstract class SeriesDatabaseState with _$SeriesDatabaseState {
  const factory SeriesDatabaseState({
    @required bool isBookmarked,
    @required bool isLiked,
    @required Chapter chapterOne,
    @required int bookmarksCount,
    @required int likesCount,
    @required int viewsCount,
    @required Map<String, String> genresMap,
    @required Map<String, String> languagesMap,
    @required Option<Either<DatabaseFailure, DatabaseSuccess>> databaseFailureOrSuccessOption,
    @required Series series,
    @required Session session,
  }) = _SeriesDatabaseState;

  factory SeriesDatabaseState.initial() => SeriesDatabaseState(
        bookmarksCount: 0,
        chapterOne: Chapter(),
        databaseFailureOrSuccessOption: none(),
        genresMap: <String, String>{},
        isBookmarked: false,
        isLiked: false,
        languagesMap: <String, String>{},
        likesCount: 0,
        series: Series(),
        session: Session(),
        viewsCount: 0,
      );
}
