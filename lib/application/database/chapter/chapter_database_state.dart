part of 'chapter_database_bloc.dart';

/// @nodoc
@freezed
abstract class ChapterDatabaseState with _$ChapterDatabaseState {
  /// @nodoc
  const factory ChapterDatabaseState({
    @required bool canWriteNextChapter,
    @required bool isBookmarked,
    @required bool isLiked,
    @required bool showChapterAdditionalInfo,
    @required bool showNavbar,
    @required Chapter chapter,
    @required Chapter nextSameAuthorChapter,
    @required Config config,
    @required Count bookmarksCount,
    @required Count likesCount,
    @required Count viewsCount,
    @required double percentProgress,
    @required List<Chapter> nextChapters,
    @required
        Option<Either<DatabaseFailure, ChapterDatabaseSuccess>>
            chapterDatabaseFailureOrSuccessOption,
    @required
        Option<Either<ConfigDatabaseFailure, ConfigDatabaseSuccess>>
            configDatabaseFailureOrSuccessOption,
    @required
        Option<Either<DatabaseFailure, SessionDatabaseSuccess>>
            sessionDatabaseFailureOrSuccessOption,
    @required Session session,
  }) = _ChapterDatabaseState;

  /// @nodoc
  factory ChapterDatabaseState.initial() => ChapterDatabaseState(
        bookmarksCount: Count(count: 0),
        canWriteNextChapter: false,
        chapter: Chapter(),
        chapterDatabaseFailureOrSuccessOption: none(),
        config: Config(),
        configDatabaseFailureOrSuccessOption: none(),
        isBookmarked: false,
        isLiked: false,
        likesCount: Count(count: 0),
        nextChapters: <Chapter>[],
        nextSameAuthorChapter: Chapter(),
        percentProgress: 0.0,
        session: Session(),
        sessionDatabaseFailureOrSuccessOption: none(),
        showChapterAdditionalInfo: false,
        showNavbar: true,
        viewsCount: Count(count: 0),
      );
}
