part of 'library_bloc.dart';

@freezed
class LibraryEvent with _$LibraryEvent {
  const factory LibraryEvent.init() = Init;

  const factory LibraryEvent.sessionFetched() = SessionFetched;

  const factory LibraryEvent.branchDeleted(UniqueID uid) = BranchDeleted;

  const factory LibraryEvent.branchUpdated(Branch branch) = BranchUpdated;

  const factory LibraryEvent.pageViewIndexChanged(int index) =
      PageViewIndexChanged;

  const factory LibraryEvent.treeDeleted(UniqueID uid) = TreeDeleted;

  const factory LibraryEvent.treeUpdated(Tree tree) = TreeUpdated;

  const factory LibraryEvent.verticalNavbarIndexChanged(int index) =
      VerticalNavbarIndexChanged;
}
