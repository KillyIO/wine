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
  const factory TreeEvent.branchOneNotFound() = BranchOneNotFound;

  /// @nodoc
  const factory TreeEvent.launchWithUID(UniqueID uid, {Tree? tree}) =
      LaunchWithUID;

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
