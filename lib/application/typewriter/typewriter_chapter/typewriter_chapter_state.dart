part of 'typewriter_chapter_bloc.dart';

/// @nodoc
@freezed
class TypewriterChapterState with _$TypewriterChapterState {
  /// @nodoc
  const factory TypewriterChapterState({
    required String coverURL,
  }) = _TypewriterChapterState;

  /// @nodoc
  factory TypewriterChapterState.initial() => TypewriterChapterState(
        coverURL: '',
      );
}
