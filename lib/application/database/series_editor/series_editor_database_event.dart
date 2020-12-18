part of 'series_editor_database_bloc.dart';

/// @nodoc
@freezed
abstract class SeriesEditorDatabaseEvent with _$SeriesEditorDatabaseEvent {
  /// @nodoc
  const factory SeriesEditorDatabaseEvent.addCoverPressedEVT() =
      AddCoverPressedEVT;

  /// @nodoc
  const factory SeriesEditorDatabaseEvent.chapterDraftDeletedEVT() =
      ChapterDraftDeletedEVT;

  /// @nodoc
  const factory SeriesEditorDatabaseEvent.deleteDraftButtonPressedEVT() =
      DeleteDraftButtonPressedEVT;

  /// @nodoc
  const factory SeriesEditorDatabaseEvent.genreOptionalSelectedEVT(
    String genreOptional,
  ) = GenreOptionalSelectedEVT;

  /// @nodoc
  const factory SeriesEditorDatabaseEvent.genreSelectedEVT(String genre) =
      GenreSelectedEVT;

  /// @nodoc
  const factory SeriesEditorDatabaseEvent.isNSFWChangedEVT({
    @required bool isNSFW,
  }) = IsNSFWChangedEVT;

  /// @nodoc
  const factory SeriesEditorDatabaseEvent.languageSelectedEVT(String language) =
      LanguageSelectedEVT;

  /// @nodoc
  const factory SeriesEditorDatabaseEvent.saveSeriesDraftButtonPressedEVT() =
      SaveSeriesDraftButtonPressedEVT;

  /// @nodoc
  const factory SeriesEditorDatabaseEvent.seriesEditorLaunchedFromAccountEVT(
    BuildContext context,
    Series seriesDraft,
  ) = SeriesEditorLaunchedFromAccountEVT;

  /// @nodoc
  const factory SeriesEditorDatabaseEvent.seriesEditorLaunchedFromHomeEVT(
    BuildContext context,
  ) = SeriesEditorLaunchedFromHomeEVT;

  /// @nodoc
  const factory SeriesEditorDatabaseEvent.sessionFetchedEVT() =
      SessionFetchedEVT;

  /// @nodoc
  const factory SeriesEditorDatabaseEvent.subtitleChangedEVT(String subtitle) =
      SubtitleChangedEVT;

  /// @nodoc
  const factory SeriesEditorDatabaseEvent.summaryChangedEVT(String summary) =
      SummaryChangedEVT;

  /// @nodoc
  const factory SeriesEditorDatabaseEvent.titleChangedEVT(String title) =
      TitleChangedEVT;
}
