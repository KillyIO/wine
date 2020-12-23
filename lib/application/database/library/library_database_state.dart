part of 'library_database_bloc.dart';

/// @nodoc
@freezed
abstract class LibraryDatabaseState with _$LibraryDatabaseState {
  /// @nodoc
  const factory LibraryDatabaseState({
    @required bool isLoading,
    @required List<Chapter> bookmarkedChapters,
    @required List<Chapter> chapterDrafts,
    @required List<Chapter> chapters,
    @required List<Series> bookmarkedSeriesList,
    @required List<Series> seriesList,
    @required List<Series> seriesDrafts,
    @required List<List<bool>> layoutDataUpdated,
    @required
        Option<Either<DatabaseFailure, ChapterDatabaseSuccess>>
            chapterDatabaseFailureOrSuccessOption,
    @required
        Option<Either<DatabaseFailure, ChapterDraftDatabaseSuccess>>
            chapterDraftDatabaseFailureOrSuccessOption,
    @required
        Option<Either<DatabaseFailure, SeriesDatabaseSuccess>>
            seriesDatabaseFailureOrSuccessOption,
    @required
        Option<Either<DatabaseFailure, SeriesDraftDatabaseSuccess>>
            seriesDraftDatabaseFailureOrSuccessOption,
    @required
        Option<Either<DatabaseFailure, SessionDatabaseSuccess>>
            sessionDatabaseFailureOrSuccessOption,
    @required Session session,
  }) = _LibraryDatabaseState;

  /// @nodoc
  factory LibraryDatabaseState.initial() => LibraryDatabaseState(
        bookmarkedChapters: <Chapter>[],
        bookmarkedSeriesList: <Series>[],
        chapterDatabaseFailureOrSuccessOption: none(),
        chapterDraftDatabaseFailureOrSuccessOption: none(),
        chapterDrafts: <Chapter>[],
        chapters: <Chapter>[],
        isLoading: false,
        layoutDataUpdated: <List<bool>>[],
        seriesDatabaseFailureOrSuccessOption: none(),
        seriesDraftDatabaseFailureOrSuccessOption: none(),
        seriesDrafts: <Series>[],
        seriesList: <Series>[],
        session: Session(),
        sessionDatabaseFailureOrSuccessOption: none(),
      );
}
