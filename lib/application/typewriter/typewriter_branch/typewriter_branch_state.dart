part of 'typewriter_branch_bloc.dart';

/// @nodoc
@freezed
class TypewriterBranchState with _$TypewriterBranchState {
  /// @nodoc
  const factory TypewriterBranchState({
    required Branch branch,
    required String coverURL,
    required int currentPageViewIdx,
    required TypewriterEndState endState,
    required Option<Result<None, CoreFailure>> failureOption,
    required List<Genre> genres,
    required bool isEdit,
    required bool isNSFW,
    required bool isProcessing,
    required Language language,
    required Leaf leaf,
    required QuillController leafController,
    required int leafWordCount,
    required Licence licence,
    required bool showErrorMessages,
    required Title title,
    required TextEditingController titleController,
    required int titleWordCount,
  }) = _TypewriterBranchState;

  /// @nodoc
  factory TypewriterBranchState.initial() => TypewriterBranchState(
        branch: Branch.empty(),
        coverURL: '',
        currentPageViewIdx: 0,
        endState: TypewriterEndState.unknown,
        failureOption: const None(),
        genres: <Genre>[],
        isEdit: false,
        isNSFW: false,
        isProcessing: false,
        language: Language(''),
        leaf: Leaf('', const <dynamic>[]),
        leafController: QuillController.basic(),
        leafWordCount: 0,
        licence: Licence(''),
        showErrorMessages: false,
        title: Title(''),
        titleController: TextEditingController(),
        titleWordCount: 0,
      );
}
