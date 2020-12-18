part of 'core_database_bloc.dart';

/// @nodoc
@freezed
abstract class CoreDatabaseState with _$CoreDatabaseState {
  /// @nodoc
  const factory CoreDatabaseState.initial() = _Initial;

  /// @nodoc
  const factory CoreDatabaseState.chapterDraftDeletedFromAccountSTE({
    String chapterDraftUID,
    String seriesDraftUID,
  }) = _ChapterDraftDeletedFromAccountSTE;

  /// @nodoc
  const factory CoreDatabaseState.chapterDraftSavedFromAccountSTE(
    Chapter chapterDraft,
  ) = _ChapterDraftSavedFromAccountSTE;

  /// @nodoc
  const factory CoreDatabaseState.chapterPublishedFromAccountSTE(
    Chapter chapter,
  ) = _ChapterPublishedFromAccountSTE;

  /// @nodoc
  const factory CoreDatabaseState.chapterPublishedFromChapterSTE(
    Chapter chapter,
  ) = _ChapterPublishedFromChapterSTE;

  /// @nodoc
  const factory CoreDatabaseState.seriesDraftDeletedFromAccountSTE(
    String seriesDraftUID,
  ) = _SeriesDraftDeletedFromAccountSTE;

  /// @nodoc
  const factory CoreDatabaseState.seriesDraftSavedFromAccountSTE(
    Series seriesDraft,
  ) = _SeriesDraftSavedFromAccountSTE;

  /// @nodoc
  const factory CoreDatabaseState.seriesPublishedFromAccountSTE(Series series) =
      _SeriesPublishedFromAccountSTE;

  /// @nodoc
  const factory CoreDatabaseState.seriesPublishedFromHomeSTE(Series series) =
      _SeriesPublishedFromHomeSTE;
}
