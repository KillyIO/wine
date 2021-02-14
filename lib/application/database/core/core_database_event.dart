part of 'core_database_bloc.dart';

/// @nodoc
@freezed
abstract class CoreDatabaseEvent with _$CoreDatabaseEvent {
  /// @nodoc
  const factory CoreDatabaseEvent.chapterDraftDeletedFromLibrary({
    String chapterDraftUID,
    String seriesDraftUID,
  }) = ChapterDraftDeletedFromLibrary;

  /// @nodoc
  const factory CoreDatabaseEvent.chapterDraftSavedFromLibrary(
    Chapter chapterDraft,
  ) = ChapterDraftSavedFromLibrary;

  /// @nodoc
  const factory CoreDatabaseEvent.chapterPublishedFromChapter(Chapter chapter) =
      ChapterPublishedFromChapter;

  /// @nodoc
  const factory CoreDatabaseEvent.chapterPublishedFromLibrary(Chapter chapter) =
      ChapterPublishedFromLibrary;

  /// @nodoc
  const factory CoreDatabaseEvent.resetBloc() = ResetBloc;

  /// @nodoc
  const factory CoreDatabaseEvent.seriesDraftDeletedFromLibrary(
    String seriesDraftUID,
  ) = SeriesDraftDeletedFromLibrary;

  /// @nodoc
  const factory CoreDatabaseEvent.seriesDraftSavedFromLibrary(
    Series seriesDraft,
  ) = SeriesDraftSavedFromLibrary;

  /// @nodoc
  const factory CoreDatabaseEvent.seriesPublishedFromHome(Series series) =
      SeriesPublishedFromHome;

  /// @nodoc
  const factory CoreDatabaseEvent.seriesPublishedFromLibrary(Series series) =
      SeriesPublishedFromLibrary;
}
