part of 'account_database_bloc.dart';

/// @nodoc
@freezed
abstract class AccountDatabaseState with _$AccountDatabaseState {
  /// @nodoc
  const factory AccountDatabaseState({
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
  }) = _AccountDatabaseState;

  /// @nodoc
  factory AccountDatabaseState.initial() => AccountDatabaseState(
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
