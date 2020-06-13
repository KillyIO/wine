part of 'chapter_database_bloc.dart';

@freezed
abstract class ChapterDatabaseEvent with _$ChapterDatabaseEvent {
  const factory ChapterDatabaseEvent.chapterPageLaunched({
    Chapter chapter,
    BuildContext context,
  }) = ChapterPageLaunched;
  const factory ChapterDatabaseEvent.previousChapterButtonPressed() =
      PreviousChapterButtonPressed;
  const factory ChapterDatabaseEvent.likeButtonPressed() = LikeButtonPressed;
  const factory ChapterDatabaseEvent.bookmarkButtonPressed() =
      BookmarkButtonPressed;
  const factory ChapterDatabaseEvent.showOrHideNavbar() = ShowOrHideNavbar;
  const factory ChapterDatabaseEvent.scroll({
    @required int currentScrollPosition,
    @required int maxScrollPosition,
  }) = Scroll;
  const factory ChapterDatabaseEvent.toggleChapterAdditionalInfo() =
      ToggleChapterAdditionalInfo;
  const factory ChapterDatabaseEvent.fetchNextChapters() = FetchNextChapters;
}
