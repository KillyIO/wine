part of 'chapter_database_bloc.dart';

@freezed
abstract class ChapterDatabaseEvent with _$ChapterDatabaseEvent {
  const factory ChapterDatabaseEvent.bookmarkButtonPressedEVT() = BookmarkButtonPressedEVT;
  const factory ChapterDatabaseEvent.bookmarksUpdatedEVT() = BookmarksUpdatedEVT;
  const factory ChapterDatabaseEvent.chapterBookmarkStatusLoadedEVT() = ChapterBookmarkStatusLoadedEVT;
  const factory ChapterDatabaseEvent.chapterLikesLoadedEVT() = ChapterLikesLoadedEVT;
  const factory ChapterDatabaseEvent.chapterLikeStatusLoadedEVT() = ChapterLikeStatusLoadedEVT;
  const factory ChapterDatabaseEvent.chapterPageLaunchedEVT({Chapter chapter, BuildContext context}) =
      ChapterPageLaunchedEVT;
  const factory ChapterDatabaseEvent.chapterViewsLoadedEVT() = ChapterViewsLoadedEVT;
  const factory ChapterDatabaseEvent.chapterViewsUpdatedEVT() = ChapterViewsUpdatedEVT;
  const factory ChapterDatabaseEvent.likeButtonPressedEVT() = LikeButtonPressedEVT;
  const factory ChapterDatabaseEvent.likesUpdatedEVT() = LikesUpdatedEVT;
  const factory ChapterDatabaseEvent.loadNextChaptersEVT() = LoadNextChaptersEVT;
  const factory ChapterDatabaseEvent.previousChapterButtonPressedEVT() = PreviousChapterButtonPressedEVT;
  const factory ChapterDatabaseEvent.scrollEVT({@required int currentScrollPosition, @required int maxScrollPosition}) =
      ScrollEVT;
  const factory ChapterDatabaseEvent.sessionFetchedEVT(Session session) = SessionFetchedEVT;
  const factory ChapterDatabaseEvent.showOrHideNavbarEVT() = ShowOrHideNavbarEVT;
  const factory ChapterDatabaseEvent.toggleChapterAdditionalInfoEVT() = ToggleChapterAdditionalInfoEVT;
}
