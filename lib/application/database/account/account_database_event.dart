part of 'account_database_bloc.dart';

/// @nodoc
@freezed
abstract class AccountDatabaseEvent with _$AccountDatabaseEvent {
  /// @nodoc
  const factory AccountDatabaseEvent.accountLaunchedEVT() = AccountLaunchedEVT;

  /// @nodoc
  const factory AccountDatabaseEvent.chapterDraftDeletedEVT({
    String chapterDraftUID,
    String seriesDraftUID,
  }) = ChapterDraftDeletedEVT;

  /// @nodoc
  const factory AccountDatabaseEvent.chapterDraftSavedEVT(
    Chapter chapterDraft,
  ) = ChapterDraftSavedEVT;

  /// @nodoc
  const factory AccountDatabaseEvent.chapterPublishedEVT(Chapter chapter) =
      ChapterPublishedEVT;

  /// @nodoc
  const factory AccountDatabaseEvent.chapterTileHeldEVT(String seriesUID) =
      ChapterTileHeldEVT;

  /// @nodoc
  const factory AccountDatabaseEvent.indexChangedToChapterBookmarkedEVT() =
      IndexChangedToChapterBookmarkedEVT;

  /// @nodoc
  const factory AccountDatabaseEvent.indexChangedToChapterDraftsEVT() =
      IndexChangedToChapterDraftsEVT;

  /// @nodoc
  const factory AccountDatabaseEvent.indexChangedToChapterPublishedEVT() =
      IndexChangedToChapterPublishedEVT;

  /// @nodoc
  const factory AccountDatabaseEvent.indexChangedToSeriesBookmarkedEVT() =
      IndexChangedToSeriesBookmarkedEVT;

  /// @nodoc
  const factory AccountDatabaseEvent.indexChangedToSeriesDraftsEVT() =
      IndexChangedToSeriesDraftsEVT;

  /// @nodoc
  const factory AccountDatabaseEvent.indexChangedToSeriesPublishedEVT() =
      IndexChangedToSeriesPublishedEVT;

  /// @nodoc
  const factory AccountDatabaseEvent.seriesDraftDeletedEVT(
    String seriesDraftUID,
  ) = SeriesDraftDeletedEVT;

  /// @nodoc
  const factory AccountDatabaseEvent.seriesDraftSavedEVT(Series seriesDraft) =
      SeriesDraftSavedEVT;

  /// @nodoc
  const factory AccountDatabaseEvent.seriesPublishedEVT(Series series) =
      SeriesPublishedEVT;
}
