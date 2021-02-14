part of 'chapter_editor_database_bloc.dart';

/// @nodoc
@freezed
abstract class ChapterEditorDatabaseEvent with _$ChapterEditorDatabaseEvent {
  /// @nodoc
  const factory ChapterEditorDatabaseEvent.addCoverPressedEvent() =
      AddCoverPressedEvent;

  /// @nodoc
  const factory ChapterEditorDatabaseEvent.chapterDraftDeletedOrPublishedEvent() =
      ChapterDraftDeletedOrPublishedEvent;

  /// @nodoc
  const factory ChapterEditorDatabaseEvent.chapterPublishedEvent() =
      ChapterPublishedEvent;

  /// @nodoc
  const factory ChapterEditorDatabaseEvent.deleteDraftButtonPressedEvent() =
      DeleteDraftButtonPressedEvent;

  /// @nodoc
  const factory ChapterEditorDatabaseEvent.genreOptionalSelectedEvent(
    String genreOptional,
  ) = GenreOptionalSelectedEvent;

  /// @nodoc
  const factory ChapterEditorDatabaseEvent.genreSelectedEvent(String genre) =
      GenreSelectedEvent;

  /// @nodoc
  // ignore: lines_longer_than_80_chars
  const factory ChapterEditorDatabaseEvent.initializedWithPreviousChapterOrSeriesDraftEvent() =
      InitializedWithPreviousChapterOrSeriesDraftEvent;

  /// @nodoc
  const factory ChapterEditorDatabaseEvent.isLastChapterChangedEvent({
    @required bool isLastChapter,
  }) = IsLastChapterChangedEvent;

  /// @nodoc
  const factory ChapterEditorDatabaseEvent.isNSFWChangedEvent({
    @required bool isNSFW,
  }) = IsNSFWChangedEvent;

  /// @nodoc
  const factory ChapterEditorDatabaseEvent.languageSelectedEvent(
    String language,
  ) = LanguageSelectedEvent;

  /// @nodoc
  const factory ChapterEditorDatabaseEvent.launchedFromLibraryEvent(
    BuildContext context,
    Chapter chapterDraft,
    EditorContentOrigin editorContentOrigin,
  ) = LaunchedFromLibraryEvent;

  /// @nodoc
  // ignore: lines_longer_than_80_chars
  const factory ChapterEditorDatabaseEvent.launchedFromPreviousChapterEvent(
    BuildContext context,
    Chapter previousChapter,
    EditorContentOrigin editorContentOrigin,
  ) = LaunchedFromPreviousChapterEvent;

  /// @nodoc
  // ignore: lines_longer_than_80_chars
  const factory ChapterEditorDatabaseEvent.launchedFromSeriesEditorEvent(
    BuildContext context,
    EditorContentOrigin editorContentOrigin,
    Series seriesDraft,
  ) = LaunchedFromSeriesEditorEvent;

  /// @nodoc
  const factory ChapterEditorDatabaseEvent.licenceSelectedEvent(
    String licence,
  ) = LicenceSelectedEvent;

  /// @nodoc
  const factory ChapterEditorDatabaseEvent.publishButtonPressedEvent() =
      PublishButtonPressedEvent;

  /// @nodoc
  const factory ChapterEditorDatabaseEvent.saveOrBackButtonPressedEvent() =
      SaveOrBackButtonPressedEvent;

  /// @nodoc
  const factory ChapterEditorDatabaseEvent.seriesDraftLoadedEvent(
    Series seriesDraft,
  ) = SeriesDraftLoadedEvent;

  /// @nodoc
  const factory ChapterEditorDatabaseEvent.seriesPublishedEvent(
    String seriesDraftUID,
  ) = SeriesPublishedEvent;

  /// @nodoc
  const factory ChapterEditorDatabaseEvent.sessionFetchedEvent() =
      SessionFetchedEvent;

  /// @nodoc
  const factory ChapterEditorDatabaseEvent.storyChangedEvent(String story) =
      StoryChangedEvent;

  /// @nodoc
  const factory ChapterEditorDatabaseEvent.titleChangedEvent(String title) =
      TitleChangedEvent;
}
