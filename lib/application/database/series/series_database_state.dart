part of 'series_database_bloc.dart';

@freezed
abstract class SeriesDatabaseState with _$SeriesDatabaseState {
  const factory SeriesDatabaseState({
    @required bool isBookmarked,
    @required bool isLiked,
    @required ChapterMinified chapterOneMinified,
    @required int bookmarksCount,
    @required int likesCount,
    @required int viewsCount,
    @required Map<String, String> genresMap,
    @required Map<String, String> languagesMap,
    @required Option<Either<DatabaseFailure, DatabaseSuccess>> databaseFailureOrSuccessOption,
    @required Series series,
    @required Session session,
    @required User author,
  }) = _SeriesDatabaseState;

  factory SeriesDatabaseState.initial() => SeriesDatabaseState(
        author: User(),
        bookmarksCount: 0,
        chapterOneMinified: ChapterMinified(),
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
