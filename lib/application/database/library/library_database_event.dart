part of 'library_database_bloc.dart';

/// @nodoc
@freezed
abstract class LibraryDatabaseEvent with _$LibraryDatabaseEvent {
  /// @nodoc
  const factory LibraryDatabaseEvent.chapterDraftDeletedEVT({
    String chapterDraftUID,
    String seriesDraftUID,
  }) = ChapterDraftDeletedEVT;

  /// @nodoc
  const factory LibraryDatabaseEvent.chapterDraftSavedEVT(
    Chapter chapterDraft,
  ) = ChapterDraftSavedEVT;

  /// @nodoc
  const factory LibraryDatabaseEvent.chapterPublishedEVT(Chapter chapter) =
      ChapterPublishedEVT;

  /// @nodoc
  const factory LibraryDatabaseEvent.chapterTileHeldEVT(String seriesUID) =
      ChapterTileHeldEVT;

  /// @nodoc
  const factory LibraryDatabaseEvent.indexChangedToChapterBookmarkedEVT() =
      IndexChangedToChapterBookmarkedEVT;

  /// @nodoc
  const factory LibraryDatabaseEvent.indexChangedToChapterDraftsEVT() =
      IndexChangedToChapterDraftsEVT;

  /// @nodoc
  const factory LibraryDatabaseEvent.indexChangedToChapterPublishedEVT() =
      IndexChangedToChapterPublishedEVT;

  /// @nodoc
  const factory LibraryDatabaseEvent.indexChangedToSeriesBookmarkedEVT() =
      IndexChangedToSeriesBookmarkedEVT;

  /// @nodoc
  const factory LibraryDatabaseEvent.indexChangedToSeriesDraftsEVT() =
      IndexChangedToSeriesDraftsEVT;

  /// @nodoc
  const factory LibraryDatabaseEvent.indexChangedToSeriesPublishedEVT() =
      IndexChangedToSeriesPublishedEVT;

  /// @nodoc
  const factory LibraryDatabaseEvent.libraryLaunchedEVT() = LibraryLaunchedEVT;

  /// @nodoc
  const factory LibraryDatabaseEvent.seriesDraftDeletedEVT(
    String seriesDraftUID,
  ) = SeriesDraftDeletedEVT;

  /// @nodoc
  const factory LibraryDatabaseEvent.seriesDraftSavedEVT(Series seriesDraft) =
      SeriesDraftSavedEVT;

  /// @nodoc
  const factory LibraryDatabaseEvent.seriesPublishedEVT(Series series) =
      SeriesPublishedEVT;
}
