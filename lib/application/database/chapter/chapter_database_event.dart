part of 'chapter_database_bloc.dart';

/// @nodoc
@freezed
abstract class ChapterDatabaseEvent with _$ChapterDatabaseEvent {
  /// @nodoc
  const factory ChapterDatabaseEvent.bookmarkButtonPressed() =
      BookmarkButtonPressed;

  /// @nodoc
  const factory ChapterDatabaseEvent.bookmarksUpdated() = BookmarksUpdated;

  /// @nodoc
  const factory ChapterDatabaseEvent.chapterBookmarksLoaded() =
      ChapterBookmarksLoaded;

  /// @nodoc
  const factory ChapterDatabaseEvent.chapterLikesLoaded() = ChapterLikesLoaded;

  /// @nodoc
  const factory ChapterDatabaseEvent.chapterLikeStatusLoaded() =
      ChapterLikeStatusLoaded;

  /// @nodoc
  const factory ChapterDatabaseEvent.chapterLaunched(Chapter chapter) =
      ChapterLaunched;

  /// @nodoc
  const factory ChapterDatabaseEvent.chapterPublished(Chapter chapter) =
      ChapterPublished;

  /// @nodoc
  const factory ChapterDatabaseEvent.chapterViewsLoaded() = ChapterViewsLoaded;

  /// @nodoc
  const factory ChapterDatabaseEvent.chapterViewsUpdated() =
      ChapterViewsUpdated;

  /// @nodoc
  const factory ChapterDatabaseEvent.configFetched() = ConfigFetched;

  /// @nodoc
  const factory ChapterDatabaseEvent.likeButtonPressed() = LikeButtonPressed;

  /// @nodoc
  const factory ChapterDatabaseEvent.likesUpdated() = LikesUpdated;

  /// @nodoc
  const factory ChapterDatabaseEvent.loadNextChapters() = LoadNextChapters;

  /// @nodoc
  const factory ChapterDatabaseEvent.previousChapterButtonPressed() =
      PreviousChapterButtonPressed;

  /// @nodoc
  const factory ChapterDatabaseEvent.scroll({
    @required int currentScrollPosition,
    @required int maxScrollPosition,
  }) = Scroll;

  /// @nodoc
  const factory ChapterDatabaseEvent.sessionFetched() = SessionFetched;

  /// @nodoc
  const factory ChapterDatabaseEvent.showOrHideNavbar() = ShowOrHideNavbar;

  /// @nodoc
  const factory ChapterDatabaseEvent.toggleChapterAdditionalInfo() =
      ToggleChapterAdditionalInfo;
}
