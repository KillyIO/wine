part of 'chapter_editor_navigation_bloc.dart';

/// @nodoc
@freezed
abstract class ChapterEditorNavigationState
    with _$ChapterEditorNavigationState {
  /// @nodoc
  const factory ChapterEditorNavigationState({
    @required int currentPageViewIdx,
  }) = _ChapterEditorNavigationState;

  /// @nodoc
  factory ChapterEditorNavigationState.initial() =>
      const ChapterEditorNavigationState(
        currentPageViewIdx: 0,
      );
}
