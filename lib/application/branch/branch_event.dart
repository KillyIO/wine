part of 'branch_bloc.dart';

@freezed
class BranchEvent with _$BranchEvent {
  const factory BranchEvent.launchWithUID(UniqueID uid, {Branch? branch}) =
      LaunchWithUID;

  const factory BranchEvent.branchSet() = BranchSet;

  const factory BranchEvent.sessionFetched() = SessionFetched;

  const factory BranchEvent.authorLoaded() = AuthorLoaded;

  const factory BranchEvent.settingsFetched() = SettingsFetched;

  const factory BranchEvent.nextBranchesBySameAuthorLoaded() =
      NextBranchesBySameAuthorLoaded;

  const factory BranchEvent.nextBranchesLoaded() = NextBranchesLoaded;

  const factory BranchEvent.viewsUpdated() = ViewsUpdated;

  const factory BranchEvent.likeStatusLoaded() = LikeStatusLoaded;

  const factory BranchEvent.bookmarkButtonPressed({
    required bool isBookmarked,
  }) = BookmarkButtonPressed;

  const factory BranchEvent.likeButtonPressed({
    required bool isLiked,
  }) = LikeButtonPressed;

  const factory BranchEvent.refreshNextBranchesBySameAuthorPressed() =
      RefreshNextBranchesBySameAuthorPressed;

  const factory BranchEvent.refreshNextBranchesPressed() =
      RefreshNextBranchesPressed;

  const factory BranchEvent.scrolled(
    int currentScrollPosition,
    int maxScrollPosition,
  ) = Scrolled;

  const factory BranchEvent.toggleDetails() = ToggleDetails;
}
