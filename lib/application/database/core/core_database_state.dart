part of 'core_database_bloc.dart';

/// @nodoc
@freezed
abstract class CoreDatabaseState with _$CoreDatabaseState {
  /// @nodoc
  const factory CoreDatabaseState.initial() = _Initial;

  /// @nodoc
  const factory CoreDatabaseState.chapterDraftDeletedFromLibraryState({
    String chapterDraftUID,
    String seriesDraftUID,
  }) = _ChapterDraftDeletedFromLibraryState;

  /// @nodoc
  const factory CoreDatabaseState.chapterDraftSavedFromLibraryState(
    Chapter chapterDraft,
  ) = _ChapterDraftSavedFromLibraryState;

  /// @nodoc
  const factory CoreDatabaseState.chapterPublishedFromChapterState(
    Chapter chapter,
  ) = _ChapterPublishedFromChapterState;

  /// @nodoc
  const factory CoreDatabaseState.chapterPublishedFromLibraryState(
    Chapter chapter,
  ) = _ChapterPublishedFromLibraryState;

  /// @nodoc
  const factory CoreDatabaseState.seriesDraftDeletedFromLibraryState(
    String seriesDraftUID,
  ) = _SeriesDraftDeletedFromLibraryState;

  /// @nodoc
  const factory CoreDatabaseState.seriesDraftSavedFromLibraryState(
    Series seriesDraft,
  ) = _SeriesDraftSavedFromLibraryState;

  /// @nodoc
  const factory CoreDatabaseState.seriesPublishedFromHomeState(Series series) =
      _SeriesPublishedFromHomeState;

  /// @nodoc
  const factory CoreDatabaseState.seriesPublishedFromLibraryState(
    Series series,
  ) = _SeriesPublishedFromLibraryState;
}
