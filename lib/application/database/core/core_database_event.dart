part of 'core_database_bloc.dart';

/// @nodoc
@freezed
abstract class CoreDatabaseEvent with _$CoreDatabaseEvent {
  /// @nodoc
  const factory CoreDatabaseEvent.chapterDraftDeletedFromAccountEVT({
    String chapterDraftUID,
    String seriesDraftUID,
  }) = ChapterDraftDeletedFromAccountEVT;

  /// @nodoc
  const factory CoreDatabaseEvent.chapterDraftSavedFromAccountEVT(
    Chapter chapterDraft,
  ) = ChapterDraftSavedFromAccountEVT;

  /// @nodoc
  const factory CoreDatabaseEvent.chapterPublishedFromAccountEVT(
    Chapter chapter,
  ) = ChapterPublishedFromAccountEVT;

  /// @nodoc
  const factory CoreDatabaseEvent.chapterPublishedFromChapterEVT(
    Chapter chapter,
  ) = ChapterPublishedFromChapterEVT;

  /// @nodoc
  const factory CoreDatabaseEvent.resetBlocEVT() = ResetBlocEVT;

  /// @nodoc
  const factory CoreDatabaseEvent.seriesDraftDeletedFromAccountEVT(
    String seriesDraftUID,
  ) = SeriesDraftDeletedFromAccountEVT;

  /// @nodoc
  const factory CoreDatabaseEvent.seriesDraftSavedFromAccountEVT(
    Series seriesDraft,
  ) = SeriesDraftSavedFromAccountEVT;

  /// @nodoc
  const factory CoreDatabaseEvent.seriesPublishedFromAccountEVT(Series series) =
      SeriesPublishedFromAccountEVT;

  /// @nodoc
  const factory CoreDatabaseEvent.seriesPublishedFromHomeEVT(Series series) =
      SeriesPublishedFromHomeEVT;
}
