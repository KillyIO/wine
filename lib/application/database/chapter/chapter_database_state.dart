part of 'chapter_database_bloc.dart';

@freezed
abstract class ChapterDatabaseState with _$ChapterDatabaseState {
  const factory ChapterDatabaseState({
    @required bool isBookmarked,
    @required bool isLiked,
    @required bool showChapterAdditionalInfo,
    @required bool showNavbar,
    @required Chapter chapter,
    @required Chapter nextSameAuthorChapter,
    @required double percentProgress,
    @required int bookmarksCount,
    @required int likesCount,
    @required int viewsCount,
    @required List<Chapter> nextChapters,
    @required Map<String, String> copyrightsMap,
    @required Map<String, String> genresMap,
    @required Map<String, String> languagesMap,
    @required Option<Either<DatabaseFailure, DatabaseSuccess>> databaseFailureOrSuccessOption,
    @required Session session,
  }) = _ChapterDatabaseState;

  factory ChapterDatabaseState.initial() => ChapterDatabaseState(
        bookmarksCount: 0,
        chapter: Chapter(),
        copyrightsMap: <String, String>{},
        databaseFailureOrSuccessOption: none(),
        genresMap: <String, String>{},
        isBookmarked: false,
        isLiked: false,
        languagesMap: <String, String>{},
        likesCount: 0,
        nextChapters: <Chapter>[],
        nextSameAuthorChapter: Chapter(),
        percentProgress: 0.0,
        session: Session(),
        showChapterAdditionalInfo: false,
        showNavbar: true,
        viewsCount: 0,
      );
}
