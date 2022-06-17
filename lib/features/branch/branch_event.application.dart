part of 'branch_bloc.application.dart';

/// @nodoc
@freezed
class BranchEvent with _$BranchEvent {
  /// @nodoc
  const factory BranchEvent.launchWithUID(UniqueID uid, {Branch? branch}) =
      LaunchWithUID;

  /// @nodoc
  const factory BranchEvent.branchSet() = BranchSet;

  /// @nodoc
  const factory BranchEvent.sessionFetched() = SessionFetched;

  /// @nodoc
  const factory BranchEvent.authorLoaded() = AuthorLoaded;

  /// @nodoc
  const factory BranchEvent.settingsFetched() = SettingsFetched;

  /// @nodoc
  const factory BranchEvent.nextBranchesBySameAuthorLoaded() =
      NextBranchesBySameAuthorLoaded;

  /// @nodoc
  const factory BranchEvent.nextBranchesLoaded() = NextBranchesLoaded;

  /// @nodoc
  const factory BranchEvent.viewsUpdated() = ViewsUpdated;

  /// @nodoc
  const factory BranchEvent.likeStatusLoaded() = LikeStatusLoaded;

  /// @nodoc
  const factory BranchEvent.bookmarkButtonPressed({
    required bool isBookmarked,
  }) = BookmarkButtonPressed;

  /// @nodoc
  const factory BranchEvent.likeButtonPressed({
    required bool isLiked,
  }) = LikeButtonPressed;

  /// @nodoc
  const factory BranchEvent.refreshNextBranchesBySameAuthorPressed() =
      RefreshNextBranchesBySameAuthorPressed;

  /// @nodoc
  const factory BranchEvent.refreshNextBranchesPressed() =
      RefreshNextBranchesPressed;

  /// @nodoc
  const factory BranchEvent.scrolled(
    int currentScrollPosition,
    int maxScrollPosition,
  ) = Scrolled;

  /// @nodoc
  const factory BranchEvent.toggleDetails() = ToggleDetails;
}
