part of 'typewriter_chapter_bloc.dart';

/// @nodoc
@freezed
class TypewriterChapterState with _$TypewriterChapterState {
  /// @nodoc
  const factory TypewriterChapterState({
    required Body body,
    required QuillController bodyController,
    required int bodyWordCount,
    required Chapter chapter,
    required String coverURL,
    required int currentPageViewIdx,
    required TypewriterEndState endState,
    required Option<Result<None, CoreFailure>> failureOption,
    required List<Genre> genres,
    required bool isEdit,
    required bool isNSFW,
    required bool isProcessing,
    required Language language,
    required Licence licence,
    required bool showErrorMessages,
    required Title title,
    required TextEditingController titleController,
    required int titleWordCount,
  }) = _TypewriterChapterState;

  /// @nodoc
  factory TypewriterChapterState.initial() => TypewriterChapterState(
        body: Body('', const <dynamic>[]),
        bodyController: QuillController.basic(),
        bodyWordCount: 0,
        chapter: Chapter.empty(),
        coverURL: '',
        currentPageViewIdx: 0,
        endState: TypewriterEndState.unknown,
        failureOption: const None(),
        genres: <Genre>[],
        isEdit: false,
        isNSFW: false,
        isProcessing: false,
        language: Language(''),
        licence: Licence(''),
        showErrorMessages: false,
        title: Title(''),
        titleController: TextEditingController(),
        titleWordCount: 0,
      );
}
