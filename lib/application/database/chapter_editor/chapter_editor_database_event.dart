part of 'chapter_editor_database_bloc.dart';

/// @nodoc
@freezed
abstract class ChapterEditorDatabaseEvent with _$ChapterEditorDatabaseEvent {
  /// @nodoc
  const factory ChapterEditorDatabaseEvent.addCoverPressed() = AddCoverPressed;

  /// @nodoc
  const factory ChapterEditorDatabaseEvent.chapterDraftDeleted() =
      ChapterDraftDeleted;

  /// @nodoc
  const factory ChapterEditorDatabaseEvent.chapterPublished() =
      ChapterPublished;

  /// @nodoc
  const factory ChapterEditorDatabaseEvent.deleteDraftPressed() =
      DeleteDraftPressed;

  /// @nodoc
  const factory ChapterEditorDatabaseEvent.genreOptionalSelected(
    String genreOptional,
  ) = GenreOptionalSelected;

  /// @nodoc
  const factory ChapterEditorDatabaseEvent.genreSelected(String genre) =
      GenreSelected;

  /// @nodoc
  const factory ChapterEditorDatabaseEvent.initializedWithPreviousChapter() =
      InitializedWithPreviousChapter;

  /// @nodoc
  const factory ChapterEditorDatabaseEvent.initializedWithSeriesDraft() =
      InitializedWithSeriesDraft;

  /// @nodoc
  const factory ChapterEditorDatabaseEvent.isLastChapterChanged({
    @required bool isLastChapter,
  }) = IsLastChapterChanged;

  /// @nodoc
  const factory ChapterEditorDatabaseEvent.isNSFWChanged({
    @required bool isNSFW,
  }) = IsNSFWChanged;

  /// @nodoc
  const factory ChapterEditorDatabaseEvent.languageSelected(
    String language,
  ) = LanguageSelected;

  /// @nodoc
  const factory ChapterEditorDatabaseEvent.launchedFromLibrary(
    Chapter chapterDraft,
    EditorContentOrigin editorContentOrigin,
  ) = LaunchedFromLibrary;

  /// @nodoc
  const factory ChapterEditorDatabaseEvent.launchedFromPreviousChapter(
    Chapter previousChapter,
    EditorContentOrigin editorContentOrigin,
  ) = LaunchedFromPreviousChapter;

  /// @nodoc
  const factory ChapterEditorDatabaseEvent.launchedFromSeriesEditor(
    EditorContentOrigin editorContentOrigin,
    Series seriesDraft,
  ) = LaunchedFromSeriesEditor;

  /// @nodoc
  const factory ChapterEditorDatabaseEvent.licenceSelected(
    String licence,
  ) = LicenceSelected;

  /// @nodoc
  const factory ChapterEditorDatabaseEvent.publishPressed() = PublishPressed;

  /// @nodoc
  const factory ChapterEditorDatabaseEvent.saveOrBackPressed() =
      SaveOrBackPressed;

  /// @nodoc
  const factory ChapterEditorDatabaseEvent.seriesDraftLoaded(
    Series seriesDraft,
  ) = SeriesDraftLoaded;

  /// @nodoc
  const factory ChapterEditorDatabaseEvent.seriesPublished(
    String seriesDraftUID,
  ) = SeriesPublished;

  /// @nodoc
  const factory ChapterEditorDatabaseEvent.sessionFetched() = SessionFetched;

  /// @nodoc
  const factory ChapterEditorDatabaseEvent.storyChanged(String story) =
      StoryChanged;

  /// @nodoc
  const factory ChapterEditorDatabaseEvent.titleChanged(String title) =
      TitleChanged;
}
