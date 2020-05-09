part of 'new_chapter_database_bloc.dart';

@freezed
abstract class NewChapterDatabaseEvent with _$NewChapterDatabaseEvent {
  const factory NewChapterDatabaseEvent.newChapterPageLaunched({
    ParentType parentType,
    ChapterDraft chapterDraft,
    SeriesDraft seriesDraft,
    String previousChapterUid,
    int previousChapterIndex,
  }) = NewChapterPageLaunched;
  const factory NewChapterDatabaseEvent.titleChanged(
    String title,
  ) = TitleChanged;
  const factory NewChapterDatabaseEvent.contentChanged(
    String content,
  ) = ContentChanged;
  const factory NewChapterDatabaseEvent.publishButtonPressed() =
      PublishButtonPressed;
  const factory NewChapterDatabaseEvent.saveButtonPressed() = SaveButtonPressed;
}
