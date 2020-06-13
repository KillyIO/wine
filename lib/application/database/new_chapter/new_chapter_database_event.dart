part of 'new_chapter_database_bloc.dart';

@freezed
abstract class NewChapterDatabaseEvent with _$NewChapterDatabaseEvent {
  const factory NewChapterDatabaseEvent.newChapterPageLaunched({
    ParentType parentType,
    ChapterDraft chapterDraft,
    SeriesDraft seriesDraft,
    Chapter previousChapter,
    BuildContext context,
  }) = NewChapterPageLaunched;
  const factory NewChapterDatabaseEvent.addCoverPressed() = AddCoverPressed;
  const factory NewChapterDatabaseEvent.titleChanged(
    String title,
  ) = TitleChanged;
  const factory NewChapterDatabaseEvent.storyChanged(
    String story,
  ) = StoryChanged;
  const factory NewChapterDatabaseEvent.genreSelected(
    String genre,
  ) = GenreSelected;
  const factory NewChapterDatabaseEvent.genreOptionalSelected(
    String genreOptional,
  ) = GenreOptionalSelected;
  const factory NewChapterDatabaseEvent.languageSelected(
    String language,
  ) = LanguageSelected;
  const factory NewChapterDatabaseEvent.copyrightsSelected(
    String copyrights,
  ) = CopyrightsSelected;
  const factory NewChapterDatabaseEvent.isNSFWChanged({
    @required bool isNSFW,
  }) = IsNSFWChanged;
  const factory NewChapterDatabaseEvent.isEndChanged({
    @required bool isEnd,
  }) = IsEndChanged;
  const factory NewChapterDatabaseEvent.publishButtonPressed() =
      PublishButtonPressed;
  const factory NewChapterDatabaseEvent.saveOrBackButtonPressed() =
      SaveOrBackButtonPressed;
}
