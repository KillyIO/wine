part of 'typewriter_tree_bloc.dart';

/// @nodoc
@freezed
class TypewriterTreeState with _$TypewriterTreeState {
  /// @nodoc
  const factory TypewriterTreeState({
    required String coverURL,
    required TypewriterEndState endState,
    required Option<Result<None, CoreFailure>> failureOption,
    required List<Genre> genres,
    required bool isEdit,
    required bool isNSFW,
    required bool isProcessing,
    required Language language,
    required bool showErrorMessages,
    required Subtitle subtitle,
    required TextEditingController subtitleController,
    required int subtitleWordCount,
    required Summary summary,
    required TextEditingController summaryController,
    required int summaryWordCount,
    required Title title,
    required TextEditingController titleController,
    required int titleWordCount,
    required Tree tree,
  }) = _TypewriterTreeState;

  /// @nodoc
  factory TypewriterTreeState.initial() => TypewriterTreeState(
        coverURL: '',
        endState: TypewriterEndState.unknown,
        failureOption: const None(),
        genres: <Genre>[],
        isEdit: false,
        isNSFW: false,
        isProcessing: false,
        language: Language(''),
        showErrorMessages: false,
        subtitle: Subtitle(''),
        subtitleController: TextEditingController(),
        subtitleWordCount: 0,
        summary: Summary(''),
        summaryController: TextEditingController(),
        summaryWordCount: 0,
        title: Title(''),
        titleController: TextEditingController(),
        titleWordCount: 0,
        tree: Tree.empty(),
      );
}
