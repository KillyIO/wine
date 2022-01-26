part of 'library_bloc.dart';

/// @nodoc
@freezed
class LibraryState with _$LibraryState {
  /// [treeList]: Used to display "published" and "drafts" page views.
  const factory LibraryState({
    required List<Branch> bookmarkedBranches,
    required List<Tree> bookmarkedTree,
    required List<Branch> branches,
    required int currentPageViewIdx,
    required int currentVerticalNavbarIdx,
    required Option<Result<None, CoreFailure>> failureOption,
    required bool isProcessing,
    required User session,
    required List<Tree> trees,
  }) = _LibraryState;

  /// @nodoc
  factory LibraryState.initial() => LibraryState(
        bookmarkedBranches: <Branch>[],
        bookmarkedTree: <Tree>[],
        branches: <Branch>[],
        currentPageViewIdx: 0,
        currentVerticalNavbarIdx: 0,
        failureOption: const None(),
        isProcessing: false,
        session: User.empty(),
        trees: <Tree>[],
      );
}
