part of 'chapter_database_bloc.dart';

@freezed
abstract class ChapterDatabaseState with _$ChapterDatabaseState {
  const factory ChapterDatabaseState({
    @required Session session,
    @required Chapter chapter,
    @required Chapter nextSameAuthorChapter,
    @required List<Chapter> nextChapters,
    @required bool isLiked,
    @required bool isBookmarked,
    @required int viewsCount,
    @required int likesCount,
    @required int bookmarksCount,
    @required bool showNavbar,
    @required double percentProgress,
    @required bool showChapterAdditionalInfo,
    @required Map<String, String> genresMap,
    @required Map<String, String> languagesMap,
    @required Map<String, String> copyrightsMap,
    @required
        Option<Either<DatabaseFailure, dynamic>> databaseFailureOrSuccessOption,
  }) = _ChapterDatabaseState;

  factory ChapterDatabaseState.initial() => ChapterDatabaseState(
        session: Session(),
        chapter: Chapter(),
        nextSameAuthorChapter: Chapter(),
        nextChapters: <Chapter>[],
        isLiked: false,
        isBookmarked: false,
        viewsCount: 0,
        likesCount: 0,
        bookmarksCount: 0,
        showNavbar: true,
        percentProgress: 0.0,
        showChapterAdditionalInfo: false,
        genresMap: <String, String>{},
        languagesMap: <String, String>{},
        copyrightsMap: <String, String>{},
        databaseFailureOrSuccessOption: none(),
      );
}
