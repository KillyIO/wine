part of 'typewriter_branch_bloc.dart';

/// @nodoc
@freezed
class TypewriterBranchEvent with _$TypewriterBranchEvent {
  /// @nodoc
  const factory TypewriterBranchEvent.launchAsNewBranch({
    Branch? previousBranch,
    Tree? tree,
  }) = LaunchAsNewBranch;

  /// @nodoc
  const factory TypewriterBranchEvent.sessionFetched() = SessionFetched;

  /// @nodoc
  const factory TypewriterBranchEvent.publishButtonPressed() =
      PublishButtonPressed;

  /// @nodoc
  const factory TypewriterBranchEvent.branchOneExistenceChecked() =
      BranchOneExistenceChecked;

  /// @nodoc
  const factory TypewriterBranchEvent.addCoverPressed() = AddCoverPressed;

  /// @nodoc
  const factory TypewriterBranchEvent.deleteButtonPressed() =
      DeleteButtonPressed;

  /// @nodoc
  const factory TypewriterBranchEvent.genreAdded(String genre) = GenreAdded;

  /// @nodoc
  const factory TypewriterBranchEvent.genreRemoved(String genre) = GenreRemoved;

  /// @nodoc
  const factory TypewriterBranchEvent.isNSFWChanged({required bool isNSFW}) =
      IsNSFWChanged;

  /// @nodoc
  const factory TypewriterBranchEvent.languageSelected(String language) =
      LanguageSelected;

  /// @nodoc
  const factory TypewriterBranchEvent.launchWithUID(
    UniqueID uid, {
    Branch? branch,
  }) = LaunchWithUID;

  /// @nodoc
  const factory TypewriterBranchEvent.leafChanged() = LeafChanged;

  /// @nodoc
  const factory TypewriterBranchEvent.licenceSelected(LicenceType licence) =
      LicenceSelected;

  /// @nodoc
  const factory TypewriterBranchEvent.pageViewIndexChanged(int index) =
      PageViewIndexChanged;

  /// @nodoc
  const factory TypewriterBranchEvent.saveButtonPressed() = SaveButtonPressed;

  /// @nodoc
  const factory TypewriterBranchEvent.titleChanged(String title) = TitleChanged;
}
