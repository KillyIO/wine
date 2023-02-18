part of 'library_bloc.dart';

/// @nodoc
@freezed
class LibraryEvent with _$LibraryEvent {
  /// @nodoc
  const factory LibraryEvent.init() = Init;

  /// @nodoc
  const factory LibraryEvent.sessionFetched() = SessionFetched;

  /// @nodoc
  const factory LibraryEvent.branchDeleted(UniqueID uid) = BranchDeleted;

  /// @nodoc
  const factory LibraryEvent.branchUpdated(Branch branch) = BranchUpdated;

  /// @nodoc
  const factory LibraryEvent.pageViewIndexChanged(int index) =
      PageViewIndexChanged;

  /// @nodoc
  const factory LibraryEvent.treeDeleted(UniqueID uid) = TreeDeleted;

  /// @nodoc
  const factory LibraryEvent.treeUpdated(Tree tree) = TreeUpdated;

  /// @nodoc
  const factory LibraryEvent.verticalNavbarIndexChanged(int index) =
      VerticalNavbarIndexChanged;
}
