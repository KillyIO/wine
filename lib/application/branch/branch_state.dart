part of 'branch_bloc.dart';

/// @nodoc
@freezed
class BranchState with _$BranchState {
  /// @nodoc
  const factory BranchState({
    required bool authorIsUser,
    required User author,
    required Branch branch,
    required Option<Result<None, CoreFailure>> failureOption,
    required bool isBookmarked,
    required bool isLiked,
    required bool isProcessing,
    required QuillController leafController,
    required List<Branch> nextBranches,
    required List<Branch> sameAuthorNextBranches,
    required double scrollProgress,
    required Settings settings,
    required bool showDetails,
    User? session,
  }) = _BranchState;

  /// @nodoc
  factory BranchState.initial() => BranchState(
        authorIsUser: false,
        author: User.empty(),
        branch: Branch.empty(),
        failureOption: const None(),
        isBookmarked: false,
        isLiked: false,
        isProcessing: false,
        leafController: QuillController.basic(),
        nextBranches: <Branch>[],
        sameAuthorNextBranches: <Branch>[],
        scrollProgress: 0,
        settings: Settings.empty(),
        showDetails: false,
      );
}
