part of 'tree_bloc.dart';

/// @nodoc
@freezed
class TreeEvent with _$TreeEvent {
  /// @nodoc
  const factory TreeEvent.authorLoaded() = AuthorLoaded;

  /// @nodoc
  const factory TreeEvent.bookmarkButtonPressed({
    required bool isBookmarked,
  }) = BookmarkButtonPressed;

  /// @nodoc
  const factory TreeEvent.branchOneLoaded() = BranchOneLoaded;

  /// @nodoc
  const factory TreeEvent.launchWithID(UniqueID id, {Tree? tree}) =
      LaunchWithID;

  /// @nodoc
  const factory TreeEvent.likeButtonPressed({
    required bool isLiked,
  }) = LikeButtonPressed;

  /// @nodoc
  const factory TreeEvent.likeStatusLoaded() = LikeStatusLoaded;

  /// @nodoc
  const factory TreeEvent.sessionFetched() = SessionFetched;

  /// @nodoc
  const factory TreeEvent.settingsFetched() = SettingsFetched;

  /// @nodoc
  const factory TreeEvent.treeSet() = TreeSet;

  /// @nodoc
  const factory TreeEvent.viewsUpdated() = ViewsUpdated;
}
