part of 'tree_bloc.dart';

@freezed
class TreeEvent with _$TreeEvent {
  const factory TreeEvent.launchWithUID(UniqueID uid, {Tree? tree}) =
      LaunchWithUID;

  const factory TreeEvent.treeSet() = TreeSet;

  const factory TreeEvent.sessionFetched() = SessionFetched;

  const factory TreeEvent.authorLoaded() = AuthorLoaded;

  const factory TreeEvent.settingsFetched() = SettingsFetched;

  const factory TreeEvent.branchOneLoaded() = BranchOneLoaded;

  const factory TreeEvent.viewsUpdated() = ViewsUpdated;

  const factory TreeEvent.likeStatusLoaded() = LikeStatusLoaded;

  const factory TreeEvent.branchOneNotFound() = BranchOneNotFound;

  const factory TreeEvent.bookmarkButtonPressed({
    required bool isBookmarked,
  }) = BookmarkButtonPressed;

  const factory TreeEvent.likeButtonPressed({
    required bool isLiked,
  }) = LikeButtonPressed;
}
