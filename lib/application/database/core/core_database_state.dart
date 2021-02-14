part of 'core_database_bloc.dart';

/// @nodoc
@freezed
abstract class CoreDatabaseState with _$CoreDatabaseState {
  /// @nodoc
  const factory CoreDatabaseState.initial() = _Initial;

  /// @nodoc
  const factory CoreDatabaseState.chapterDraftDeletedFromLibrary({
    String chapterDraftUID,
    String seriesDraftUID,
  }) = _ChapterDraftDeletedFromLibrary;

  /// @nodoc
  const factory CoreDatabaseState.chapterDraftSavedFromLibrary(
    Chapter chapterDraft,
  ) = _ChapterDraftSavedFromLibrary;

  /// @nodoc
  const factory CoreDatabaseState.chapterPublishedFromChapter(Chapter chapter) =
      _ChapterPublishedFromChapter;

  /// @nodoc
  const factory CoreDatabaseState.chapterPublishedFromLibrary(Chapter chapter) =
      _ChapterPublishedFromLibrary;

  /// @nodoc
  const factory CoreDatabaseState.seriesDraftDeletedFromLibrary(
    String seriesDraftUID,
  ) = _SeriesDraftDeletedFromLibrary;

  /// @nodoc
  const factory CoreDatabaseState.seriesDraftSavedFromLibrary(
    Series seriesDraft,
  ) = _SeriesDraftSavedFromLibrary;

  /// @nodoc
  const factory CoreDatabaseState.seriesPublishedFromHome(Series series) =
      _SeriesPublishedFromHome;

  /// @nodoc
  const factory CoreDatabaseState.seriesPublishedFromLibrary(Series series) =
      _SeriesPublishedFromLibrary;
}
