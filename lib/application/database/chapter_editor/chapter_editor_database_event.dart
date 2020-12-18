part of 'chapter_editor_database_bloc.dart';

/// @nodoc
@freezed
abstract class ChapterEditorDatabaseEvent with _$ChapterEditorDatabaseEvent {
  /// @nodoc
  const factory ChapterEditorDatabaseEvent.addCoverPressedEVT() =
      AddCoverPressedEVT;

  /// @nodoc
  // ignore: lines_longer_than_80_chars
  const factory ChapterEditorDatabaseEvent.chapterDraftInitializedWithPreviousChapterOrSeriesDraftEVT() =
      ChapterDraftInitializedWithPreviousChapterOrSeriesDraftEVT;

  /// @nodoc
  const factory ChapterEditorDatabaseEvent.chapterEditorLaunchedFromAccountEVT(
    BuildContext context,
    Chapter chapterDraft,
    EditorContentOrigin editorContentOrigin,
  ) = ChapterEditorLaunchedFromAccountEVT;

  /// @nodoc
  // ignore: lines_longer_than_80_chars
  const factory ChapterEditorDatabaseEvent.chapterEditorLaunchedFromPreviousChapterEVT(
    BuildContext context,
    Chapter previousChapter,
    EditorContentOrigin editorContentOrigin,
  ) = ChapterEditorLaunchedFromPreviousChapterEVT;

  /// @nodoc
  // ignore: lines_longer_than_80_chars
  const factory ChapterEditorDatabaseEvent.chapterEditorLaunchedFromSeriesEditorEVT(
    BuildContext context,
    EditorContentOrigin editorContentOrigin,
    Series seriesDraft,
  ) = ChapterEditorLaunchedFromSeriesEditorEVT;

  /// @nodoc
  const factory ChapterEditorDatabaseEvent.chapterDraftDeletedOrPublishedEVT() =
      ChapterDraftDeletedOrPublishedEVT;

  /// @nodoc
  const factory ChapterEditorDatabaseEvent.chapterPublishedEVT() =
      ChapterPublishedEVT;

  /// @nodoc
  const factory ChapterEditorDatabaseEvent.copyrightsSelectedEVT(
    String copyrights,
  ) = CopyrightsSelectedEVT;

  /// @nodoc
  const factory ChapterEditorDatabaseEvent.deleteDraftButtonPressedEVT() =
      DeleteDraftButtonPressedEVT;

  /// @nodoc
  const factory ChapterEditorDatabaseEvent.genreOptionalSelectedEVT(
    String genreOptional,
  ) = GenreOptionalSelectedEVT;

  /// @nodoc
  const factory ChapterEditorDatabaseEvent.genreSelectedEVT(String genre) =
      GenreSelectedEVT;

  /// @nodoc
  const factory ChapterEditorDatabaseEvent.isLastChapterChangedEVT({
    @required bool isLastChapter,
  }) = IsLastChapterChangedEVT;

  /// @nodoc
  const factory ChapterEditorDatabaseEvent.isNSFWChangedEVT({
    @required bool isNSFW,
  }) = IsNSFWChangedEVT;

  /// @nodoc
  const factory ChapterEditorDatabaseEvent.languageSelectedEVT(
    String language,
  ) = LanguageSelectedEVT;

  /// @nodoc
  const factory ChapterEditorDatabaseEvent.publishButtonPressedEVT() =
      PublishButtonPressedEVT;

  /// @nodoc
  const factory ChapterEditorDatabaseEvent.saveOrBackButtonPressedEVT() =
      SaveOrBackButtonPressedEVT;

  /// @nodoc
  const factory ChapterEditorDatabaseEvent.seriesDraftLoadedEVT(
    Series seriesDraft,
  ) = SeriesDraftLoadedEVT;

  /// @nodoc
  const factory ChapterEditorDatabaseEvent.seriesPublishedEVT(
    String seriesDraftUID,
  ) = SeriesPublishedEVT;

  /// @nodoc
  const factory ChapterEditorDatabaseEvent.sessionFetchedEVT() =
      SessionFetchedEVT;

  /// @nodoc
  const factory ChapterEditorDatabaseEvent.storyChangedEVT(String story) =
      StoryChangedEVT;

  /// @nodoc
  const factory ChapterEditorDatabaseEvent.titleChangedEVT(String title) =
      TitleChangedEVT;
}
