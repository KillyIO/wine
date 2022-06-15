part of 'tree_bloc.application.dart';

/// @nodoc
@freezed
class TreeState with _$TreeState {
  /// @nodoc
  const factory TreeState({
    required bool authorIsUser,
    required User? author,
    Branch? branchOne,
    Branch? branchResume,
    required Option<Result<None, CoreFailure>> failureOption,
    required bool isBookmarked,
    required bool isLiked,
    required bool isProcessing,
    required User? session,
    required Settings settings,
    required Tree tree,
  }) = _TreeState;

  /// @nodoc
  factory TreeState.initial() => TreeState(
        authorIsUser: false,
        author: null,
        failureOption: const None(),
        isBookmarked: false,
        isLiked: false,
        isProcessing: false,
        session: null,
        settings: Settings.empty(),
        tree: Tree.empty(),
      );
}
