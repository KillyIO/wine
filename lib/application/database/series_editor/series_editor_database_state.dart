part of 'series_editor_database_bloc.dart';

/// @nodoc
@freezed
abstract class SeriesEditorDatabaseState with _$SeriesEditorDatabaseState {
  /// @nodoc
  const factory SeriesEditorDatabaseState({
    @required bool disclaimerAlreadyDisplayed,
    @required bool isEditMode,
    @required bool isLoading,
    @required bool isNSFW,
    @required bool showErrorMessages,
    @required EditorContentOrigin editorContentOrigin,
    @required Genre genre,
    @required Genre genreOptional,
    @required int subtitleWordCount,
    @required int summaryWordCount,
    @required int titleWordCount,
    @required Language language,
    @required
        Option<Either<DatabaseFailure, ChapterDraftDatabaseSuccess>>
            chapterDraftDatabaseFailureOrSuccessOption,
    @required
        Option<Either<PlaceholderDatabaseFailure, PlaceholderDatabaseSuccess>>
            placeholderDatabaseFailureOrSuccessOption,
    @required
        Option<Either<DatabaseFailure, SeriesDraftDatabaseSuccess>>
            seriesDraftDatabaseFailureOrSuccessOption,
    @required
        Option<Either<DatabaseFailure, SessionDatabaseSuccess>>
            sessionDatabaseFailureOrSuccessOption,
    @required Series seriesDraft,
    @required String coverURL,
    @required String genreOptionalStr,
    @required String genreStr,
    @required String languageStr,
    @required String subtitleStr,
    @required String summaryStr,
    @required String titleStr,
    @required Subtitle subtitle,
    @required Summary summary,
    @required TextEditingController subtitleController,
    @required TextEditingController summaryController,
    @required TextEditingController titleController,
    @required Title title,
  }) = _SeriesEditorDatabaseState;

  /// @nodoc
  factory SeriesEditorDatabaseState.initial() => SeriesEditorDatabaseState(
        chapterDraftDatabaseFailureOrSuccessOption: none(),
        coverURL: '',
        disclaimerAlreadyDisplayed: false,
        editorContentOrigin: EditorContentOrigin.unknown,
        genre: Genre(''),
        genreOptional: Genre('', isOptional: true),
        genreOptionalStr: '',
        genreStr: '',
        isEditMode: false,
        isLoading: false,
        isNSFW: false,
        language: Language(''),
        languageStr: '',
        placeholderDatabaseFailureOrSuccessOption: none(),
        seriesDraft: Series(),
        seriesDraftDatabaseFailureOrSuccessOption: none(),
        sessionDatabaseFailureOrSuccessOption: none(),
        showErrorMessages: false,
        subtitle: Subtitle(''),
        subtitleController: TextEditingController(),
        subtitleStr: '',
        subtitleWordCount: 0,
        summary: Summary(''),
        summaryController: TextEditingController(),
        summaryStr: '',
        summaryWordCount: 0,
        title: Title(''),
        titleController: TextEditingController(),
        titleStr: '',
        titleWordCount: 0,
      );
}
