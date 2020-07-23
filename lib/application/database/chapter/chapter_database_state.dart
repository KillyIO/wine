part of 'chapter_database_bloc.dart';

@freezed
abstract class ChapterDatabaseState with _$ChapterDatabaseState {
  const factory ChapterDatabaseState({
    @required bool isBookmarked,
    @required bool isLiked,
    @required bool showChapterAdditionalInfo,
    @required bool showNavbar,
    @required Chapter chapter,
    @required ChapterMinified nextSameAuthorChapterMinified,
    @required double percentProgress,
    @required int bookmarksCount,
    @required int likesCount,
    @required int viewsCount,
    @required List<ChapterMinified> nextChaptersMinified,
    @required Map<String, String> copyrightsMap,
    @required Map<String, String> genresMap,
    @required Map<String, String> languagesMap,
    @required Option<Either<DatabaseFailure, DatabaseSuccess>> databaseFailureOrSuccessOption,
    @required Series series,
    @required Session session,
    @required User author,
  }) = _ChapterDatabaseState;

  factory ChapterDatabaseState.initial() => ChapterDatabaseState(
        author: User(),
        bookmarksCount: 0,
        chapter: Chapter(),
        copyrightsMap: <String, String>{},
        databaseFailureOrSuccessOption: none(),
        genresMap: <String, String>{},
        isBookmarked: false,
        isLiked: false,
        languagesMap: <String, String>{},
        likesCount: 0,
        nextChaptersMinified: <ChapterMinified>[],
        nextSameAuthorChapterMinified: ChapterMinified(),
        percentProgress: 0.0,
        series: Series(),
        session: Session(),
        showChapterAdditionalInfo: false,
        showNavbar: true,
        viewsCount: 0,
      );
}
