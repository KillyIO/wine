part of 'new_chapter_database_bloc.dart';

@freezed
abstract class NewChapterDatabaseState with _$NewChapterDatabaseState {
  const factory NewChapterDatabaseState({
    @required ChapterDraft chapterDraft,
    @required Title title,
    @required int titleWordCount,
    // @required Content content,
    @required int contentWordCount,
    @required bool isPublishingOrSaving,
  }) = _NewChapterPageState;

  factory NewChapterDatabaseState.initial() => NewChapterDatabaseState(
        chapterDraft: ChapterDraft(),
        title: Title(''),
        titleWordCount: 0,
        // content: Content(''),
        contentWordCount: 0,
        isPublishingOrSaving: false,
      );
}
