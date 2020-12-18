part of 'chapter_editor_navigation_bloc.dart';

/// @nodoc
@freezed
abstract class ChapterEditorNavigationEvent
    with _$ChapterEditorNavigationEvent {
  /// @nodoc
  const factory ChapterEditorNavigationEvent.pageViewIndexChangedEVT(
    int index,
  ) = PageViewIndexChangedEVT;
}
