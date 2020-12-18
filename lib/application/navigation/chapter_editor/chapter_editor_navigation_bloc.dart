import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:wine/utils/getters.dart';

part 'chapter_editor_navigation_bloc.freezed.dart';
part 'chapter_editor_navigation_event.dart';
part 'chapter_editor_navigation_state.dart';

/// @nodoc
@injectable
class ChapterEditorNavigationBloc
    extends Bloc<ChapterEditorNavigationEvent, ChapterEditorNavigationState>
    with Getters {
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
          if (event.index > chapterEditorItemsKeys.length - 1) {
            newIdx = 0;
          }
          if (event.index < 0) {
            newIdx = chapterEditorItemsKeys.length - 1;
          }
          yield state.copyWith(currentPageViewIdx: newIdx);
        }
      },
    );
  }
}
