part of 'tree_bloc.dart';

/// @nodoc
@freezed
class TreeState with _$TreeState {
  /// @nodoc
  const factory TreeState({
    required bool authorIsUser,
    required User author,
    Chapter? chapterOne,
    Chapter? chapterResume,
    required Option<Result<None, CoreFailure>> failureOption,
    required bool isBookmarked,
    required bool isLiked,
    required bool isProcessing,
    required User session,
    required Settings settings,
    required Tree tree,
  }) = _TreeState;

  /// @nodoc
  factory TreeState.initial() => TreeState(
        authorIsUser: false,
        author: User.empty(),
        failureOption: const None(),
        isBookmarked: false,
        isLiked: false,
        isProcessing: false,
        session: User.empty(),
        settings: Settings.empty(),
        tree: Tree.empty(),
      );
}
