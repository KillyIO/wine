part of 'core_database_bloc.dart';

/// @nodoc
@freezed
abstract class CoreDatabaseEvent with _$CoreDatabaseEvent {
  /// @nodoc
  const factory CoreDatabaseEvent.chapterDraftDeletedFromLibraryEvent({
    String chapterDraftUID,
    String seriesDraftUID,
  }) = ChapterDraftDeletedFromLibraryEvent;

  /// @nodoc
  const factory CoreDatabaseEvent.chapterDraftSavedFromLibraryEvent(
    Chapter chapterDraft,
  ) = ChapterDraftSavedFromLibraryEvent;

  /// @nodoc
  const factory CoreDatabaseEvent.chapterPublishedFromChapterEvent(
    Chapter chapter,
  ) = ChapterPublishedFromChapterEvent;

  /// @nodoc
  const factory CoreDatabaseEvent.chapterPublishedFromLibraryEvent(
    Chapter chapter,
  ) = ChapterPublishedFromLibraryEvent;

  /// @nodoc
  const factory CoreDatabaseEvent.resetBlocEvent() = ResetBlocEvent;

  /// @nodoc
  const factory CoreDatabaseEvent.seriesDraftDeletedFromLibraryEvent(
    String seriesDraftUID,
  ) = SeriesDraftDeletedFromLibraryEvent;

  /// @nodoc
  const factory CoreDatabaseEvent.seriesDraftSavedFromLibraryEvent(
    Series seriesDraft,
  ) = SeriesDraftSavedFromLibraryEvent;

  /// @nodoc
  const factory CoreDatabaseEvent.seriesPublishedFromHomeEvent(Series series) =
      SeriesPublishedFromHomeEvent;

  /// @nodoc
  const factory CoreDatabaseEvent.seriesPublishedFromLibraryEvent(
      Series series) = SeriesPublishedFromLibraryEvent;
}
