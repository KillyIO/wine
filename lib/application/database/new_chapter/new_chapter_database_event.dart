part of 'new_chapter_database_bloc.dart';

@freezed
abstract class NewChapterDatabaseEvent with _$NewChapterDatabaseEvent {
  const factory NewChapterDatabaseEvent.newChapterPageLaunched({
    ChapterDraft chapterDraft,
    SeriesDraft seriesDraft,
  }) = NewChapterPageLaunched;
}
