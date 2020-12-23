part of 'core_database_bloc.dart';

/// @nodoc
@freezed
abstract class CoreDatabaseEvent with _$CoreDatabaseEvent {
  /// @nodoc
  const factory CoreDatabaseEvent.chapterDraftDeletedFromLibraryEVT({
    String chapterDraftUID,
    String seriesDraftUID,
  }) = ChapterDraftDeletedFromLibraryEVT;

  /// @nodoc
  const factory CoreDatabaseEvent.chapterDraftSavedFromLibraryEVT(
    Chapter chapterDraft,
  ) = ChapterDraftSavedFromLibraryEVT;

  /// @nodoc
  const factory CoreDatabaseEvent.chapterPublishedFromLibraryEVT(
    Chapter chapter,
  ) = ChapterPublishedFromLibraryEVT;

  /// @nodoc
  const factory CoreDatabaseEvent.chapterPublishedFromChapterEVT(
    Chapter chapter,
  ) = ChapterPublishedFromChapterEVT;

  /// @nodoc
  const factory CoreDatabaseEvent.resetBlocEVT() = ResetBlocEVT;

  /// @nodoc
  const factory CoreDatabaseEvent.seriesDraftDeletedFromLibraryEVT(
    String seriesDraftUID,
  ) = SeriesDraftDeletedFromLibraryEVT;

  /// @nodoc
  const factory CoreDatabaseEvent.seriesDraftSavedFromLibraryEVT(
    Series seriesDraft,
  ) = SeriesDraftSavedFromLibraryEVT;

  /// @nodoc
  const factory CoreDatabaseEvent.seriesPublishedFromLibraryEVT(Series series) =
      SeriesPublishedFromLibraryEVT;

  /// @nodoc
  const factory CoreDatabaseEvent.seriesPublishedFromHomeEVT(Series series) =
      SeriesPublishedFromHomeEVT;
}
