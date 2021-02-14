part of 'chapter_editor_database_bloc.dart';

/// @nodoc
@freezed
abstract class ChapterEditorDatabaseState with _$ChapterEditorDatabaseState {
  /// @nodoc
  const factory ChapterEditorDatabaseState({
    @required bool isEditMode,
    @required bool isFirstChapter,
    @required bool isLastChapter,
    @required bool isLoading,
    @required bool isNSFW,
    @required bool showErrorMessages,
    @required Chapter chapterDraft,
    @required Chapter previousChapter,
    @required Licence licence,
    @required EditorContentOrigin editorContentOrigin,
    @required Genre genre,
    @required Genre genreOptional,
    @required int storyWordCount,
    @required int titleWordCount,
    @required Language language,
    @required
        Option<Either<DatabaseFailure, ChapterDatabaseSuccess>>
            chapterDatabaseFailureOrSuccessOption,
    @required
        Option<Either<DatabaseFailure, ChapterDraftDatabaseSuccess>>
            chapterDraftDatabaseFailureOrSuccessOption,
    @required
        Option<Either<PlaceholderDatabaseFailure, PlaceholderDatabaseSuccess>>
            placeholderDatabaseFailureOrSuccessOption,
    @required
        Option<Either<DatabaseFailure, SeriesDatabaseSuccess>>
            seriesDatabaseFailureOrSuccessOption,
    @required
        Option<Either<DatabaseFailure, SeriesDraftDatabaseSuccess>>
            seriesDraftDatabaseFailureOrSuccessOption,
    @required
        Option<Either<DatabaseFailure, SessionDatabaseSuccess>>
            sessionDatabaseFailureOrSuccessOption,
    @required Series seriesDraft,
    @required Story story,
    @required String chapterCoverURL,
    @required String copyrightsStr,
    @required String genreOptionalStr,
    @required String genreStr,
    @required String languageStr,
    @required String seriesCoverURL,
    @required String storyStr,
    @required String titleStr,
    @required TextEditingController storyController,
    @required TextEditingController titleController,
    @required Title title,
  }) = _ChapterEditorDatabaseState;

  /// @nodoc
  factory ChapterEditorDatabaseState.initial() => ChapterEditorDatabaseState(
        chapterCoverURL: '',
        chapterDatabaseFailureOrSuccessOption: none(),
        chapterDraft: Chapter(),
        chapterDraftDatabaseFailureOrSuccessOption: none(),
        licence: Licence(''),
        copyrightsStr: '',
        editorContentOrigin: EditorContentOrigin.unknown,
        genre: Genre(''),
        genreOptional: Genre('', isOptional: true),
        genreOptionalStr: '',
        genreStr: '',
        isEditMode: false,
        isFirstChapter: false,
        isLastChapter: false,
        isLoading: false,
        isNSFW: false,
        language: Language(''),
        languageStr: '',
        placeholderDatabaseFailureOrSuccessOption: none(),
        previousChapter: Chapter(),
        seriesCoverURL: '',
        seriesDatabaseFailureOrSuccessOption: none(),
        seriesDraft: Series(),
        seriesDraftDatabaseFailureOrSuccessOption: none(),
        sessionDatabaseFailureOrSuccessOption: none(),
        showErrorMessages: false,
        story: Story(''),
        storyController: TextEditingController(),
        storyStr: '',
        storyWordCount: 0,
        title: Title(''),
        titleController: TextEditingController(),
        titleStr: '',
        titleWordCount: 0,
      );
}
