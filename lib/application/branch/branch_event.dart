part of 'branch_bloc.dart';

/// @nodoc
@freezed
class BranchEvent with _$BranchEvent {
  /// @nodoc
  const factory BranchEvent.authorLoaded() = AuthorLoaded;

  /// @nodoc
  const factory BranchEvent.bookmarkButtonPressed({
    required bool isBookmarked,
  }) = BookmarkButtonPressed;

  /// @nodoc
  const factory BranchEvent.branchSet() = BranchSet;

  /// @nodoc
  const factory BranchEvent.launchWithUID(UniqueID uid, {Branch? branch}) =
      LaunchWithUID;

  /// @nodoc
  const factory BranchEvent.likeButtonPressed({
    required bool isLiked,
  }) = LikeButtonPressed;

  /// @nodoc
  const factory BranchEvent.nextBranchesLoaded() = NextBranchesLoaded;

  /// @nodoc
  const factory BranchEvent.sessionFetched() = SessionFetched;

  /// @nodoc
  const factory BranchEvent.settingsFetched() = SettingsFetched;

  /// @nodoc
  const factory BranchEvent.viewsUpdated() = ViewsUpdated;
}
