part of 'new_chapter_database_bloc.dart';

@freezed
abstract class NewChapterDatabaseState with _$NewChapterDatabaseState {
  const factory NewChapterDatabaseState({
    @required ChapterDraft chapterDraft,
    @required bool isEditMode,
    @required Title title,
    @required String titleStr,
    @required int titleWordCount,
    @required Story story,
    @required String storyStr,
    @required int storyWordCount,
    @required Language language,
    @required String languageStr,
    @required Copyrights copyrights,
    @required String copyrightsStr,
    @required bool isNSFW,
    @required bool isEnd,
    @required bool isPublishingOrSaving,
    @required bool isPublishedOrSaved,
    @required bool isFirstChapter,
    @required Map<String, String> languagesMap,
    @required Map<String, String> copyrightsMap,
    @required bool showErrorMessages,
    @required
        Option<Either<DatabaseFailure, dynamic>> databaseFailureOrSuccessOption,
  }) = _NewChapterPageState;

  factory NewChapterDatabaseState.initial() => NewChapterDatabaseState(
        chapterDraft: ChapterDraft(),
        isEditMode: false,
        title: Title(''),
        titleStr: '',
        titleWordCount: 0,
        story: Story(''),
        storyStr: '',
        storyWordCount: 0,
        language: Language(''),
        languageStr: '',
        copyrights: Copyrights(''),
        copyrightsStr: '',
        isNSFW: false,
        isEnd: false,
        isPublishingOrSaving: false,
        isPublishedOrSaved: false,
        isFirstChapter: false,
        languagesMap: <String, String>{},
        copyrightsMap: <String, String>{},
        showErrorMessages: false,
        databaseFailureOrSuccessOption: none(),
      );
}
