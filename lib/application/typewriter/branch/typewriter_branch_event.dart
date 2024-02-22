part of 'typewriter_branch_bloc.dart';

@freezed
class TypewriterBranchEvent with _$TypewriterBranchEvent {
  const factory TypewriterBranchEvent.launchAsNewBranch({
    Branch? previousBranch,
    Tree? tree,
  }) = LaunchAsNewBranch;

  const factory TypewriterBranchEvent.sessionFetched() = SessionFetched;

  const factory TypewriterBranchEvent.publishButtonPressed() =
      PublishButtonPressed;

  const factory TypewriterBranchEvent.branchOneExistenceChecked() =
      BranchOneExistenceChecked;

  const factory TypewriterBranchEvent.addCoverPressed() = AddCoverPressed;

  const factory TypewriterBranchEvent.deleteButtonPressed() =
      DeleteButtonPressed;

  const factory TypewriterBranchEvent.genreAdded(String genre) = GenreAdded;

  const factory TypewriterBranchEvent.genreRemoved(String genre) = GenreRemoved;

  const factory TypewriterBranchEvent.isNSFWChanged({required bool isNSFW}) =
      IsNSFWChanged;

  const factory TypewriterBranchEvent.languageSelected(String language) =
      LanguageSelected;

  const factory TypewriterBranchEvent.launchWithUID(
    UniqueID uid, {
    Branch? branch,
  }) = LaunchWithUID;

  const factory TypewriterBranchEvent.leafChanged() = LeafChanged;

  const factory TypewriterBranchEvent.licenceSelected(LicenceType licence) =
      LicenceSelected;

  const factory TypewriterBranchEvent.pageViewIndexChanged(int index) =
      PageViewIndexChanged;

  const factory TypewriterBranchEvent.saveButtonPressed() = SaveButtonPressed;

  const factory TypewriterBranchEvent.titleChanged(String title) = TitleChanged;
}
