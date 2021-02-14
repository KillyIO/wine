import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wine/utils/constants/chapter_editor.dart';

part 'chapter_editor_navigation_bloc.freezed.dart';
part 'chapter_editor_navigation_event.dart';
part 'chapter_editor_navigation_state.dart';

/// @nodoc
@injectable
class ChapterEditorNavigationBloc
    extends Bloc<ChapterEditorNavigationEvent, ChapterEditorNavigationState> {
  /// @nodoc
  ChapterEditorNavigationBloc() : super(ChapterEditorNavigationState.initial());

  @override
  Stream<ChapterEditorNavigationState> mapEventToState(
    ChapterEditorNavigationEvent event,
  ) async* {
    yield* event.map(
      pageViewIndexChangedEVT: (event) async* {
        if (state.currentPageViewIdx != event.index) {
          var newIdx = event.index;
          if (event.index > chapterEditorNavbarKeys.length - 1) {
            newIdx = 0;
          }
          if (event.index < 0) {
            newIdx = chapterEditorNavbarKeys.length - 1;
          }
          yield state.copyWith(currentPageViewIdx: newIdx);
        }
      },
    );
  }
}
