part of 'chapter_database_bloc.dart';

/// @nodoc
@freezed
abstract class ChapterDatabaseEvent with _$ChapterDatabaseEvent {
  /// @nodoc
  const factory ChapterDatabaseEvent.bookmarkButtonPressedEVT() =
      BookmarkButtonPressedEVT;

  /// @nodoc
  const factory ChapterDatabaseEvent.bookmarksUpdatedEVT() =
      BookmarksUpdatedEVT;

  /// @nodoc
  const factory ChapterDatabaseEvent.chapterBookmarksLoadedEVT() =
      ChapterBookmarksLoadedEVT;

  /// @nodoc
  const factory ChapterDatabaseEvent.chapterLikesLoadedEVT() =
      ChapterLikesLoadedEVT;

  /// @nodoc
  const factory ChapterDatabaseEvent.chapterLikeStatusLoadedEVT() =
      ChapterLikeStatusLoadedEVT;

  /// @nodoc
  const factory ChapterDatabaseEvent.chapterLaunchedEVT(Chapter chapter) =
      ChapterLaunchedEVT;

  /// @nodoc
  const factory ChapterDatabaseEvent.chapterPublishedEVT(Chapter chapter) =
      ChapterPublishedEVT;

  /// @nodoc
  const factory ChapterDatabaseEvent.chapterViewsLoadedEVT() =
      ChapterViewsLoadedEVT;

  /// @nodoc
  const factory ChapterDatabaseEvent.chapterViewsUpdatedEVT() =
      ChapterViewsUpdatedEVT;

  /// @nodoc
  const factory ChapterDatabaseEvent.configFetchedEVT() = ConfigFetchedEVT;

  /// @nodoc
  const factory ChapterDatabaseEvent.likeButtonPressedEVT() =
      LikeButtonPressedEVT;

  /// @nodoc
  const factory ChapterDatabaseEvent.likesUpdatedEVT() = LikesUpdatedEVT;

  /// @nodoc
  const factory ChapterDatabaseEvent.loadNextChaptersEVT() =
      LoadNextChaptersEVT;

  /// @nodoc
  const factory ChapterDatabaseEvent.previousChapterButtonPressedEVT() =
      PreviousChapterButtonPressedEVT;

  /// @nodoc
  const factory ChapterDatabaseEvent.scrollEVT({
    @required int currentScrollPosition,
    @required int maxScrollPosition,
  }) = ScrollEVT;

  /// @nodoc
  const factory ChapterDatabaseEvent.sessionFetchedEVT() = SessionFetchedEVT;

  /// @nodoc
  const factory ChapterDatabaseEvent.showOrHideNavbarEVT() =
      ShowOrHideNavbarEVT;

  /// @nodoc
  const factory ChapterDatabaseEvent.toggleChapterAdditionalInfoEVT() =
      ToggleChapterAdditionalInfoEVT;
}
