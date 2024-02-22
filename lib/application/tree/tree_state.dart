part of 'tree_bloc.dart';

@freezed
class TreeState with _$TreeState {
  const factory TreeState({
    required bool authorIsUser,
    required User? author,
    required Option<Result<None, CoreFailure>> failureOption,
    required bool isBookmarked,
    required bool isLiked,
    required bool isProcessing,
    required Settings settings,
    required Tree tree,
    Branch? branchOne,
    Branch? branchResume,
    User? session,
  }) = _TreeState;

  factory TreeState.initial() => TreeState(
        authorIsUser: false,
        author: null,
        failureOption: const None(),
        isBookmarked: false,
        isLiked: false,
        isProcessing: false,
        settings: Settings.empty(),
        tree: Tree.empty(),
      );
}
