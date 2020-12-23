part of 'core_database_bloc.dart';

/// @nodoc
@freezed
abstract class CoreDatabaseState with _$CoreDatabaseState {
  /// @nodoc
  const factory CoreDatabaseState.initial() = _Initial;

  /// @nodoc
  const factory CoreDatabaseState.chapterDraftDeletedFromLibrarySTE({
    String chapterDraftUID,
    String seriesDraftUID,
  }) = _ChapterDraftDeletedFromLibrarySTE;

  /// @nodoc
  const factory CoreDatabaseState.chapterDraftSavedFromLibrarySTE(
    Chapter chapterDraft,
  ) = _ChapterDraftSavedFromLibrarySTE;

  /// @nodoc
  const factory CoreDatabaseState.chapterPublishedFromLibrarySTE(
    Chapter chapter,
  ) = _ChapterPublishedFromLibrarySTE;

  /// @nodoc
  const factory CoreDatabaseState.chapterPublishedFromChapterSTE(
    Chapter chapter,
  ) = _ChapterPublishedFromChapterSTE;

  /// @nodoc
  const factory CoreDatabaseState.seriesDraftDeletedFromLibrarySTE(
    String seriesDraftUID,
  ) = _SeriesDraftDeletedFromLibrarySTE;

  /// @nodoc
  const factory CoreDatabaseState.seriesDraftSavedFromLibrarySTE(
    Series seriesDraft,
  ) = _SeriesDraftSavedFromLibrarySTE;

  /// @nodoc
  const factory CoreDatabaseState.seriesPublishedFromLibrarySTE(Series series) =
      _SeriesPublishedFromLibrarySTE;

  /// @nodoc
  const factory CoreDatabaseState.seriesPublishedFromHomeSTE(Series series) =
      _SeriesPublishedFromHomeSTE;
}
