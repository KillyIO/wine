import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:wine/application/database/chapter_editor/chapter_editor_database_bloc.dart';
import 'package:wine/application/database/core/core_database_bloc.dart';
import 'package:wine/domain/database/successes/chapter_database_success.dart';
import 'package:wine/domain/database/successes/series_database_success.dart';
import 'package:wine/domain/database/successes/series_draft_database_success.dart';
import 'package:wine/domain/enums/editor_content_origin.dart';
import 'package:wine/presentation/utils/home/home_navigation_methods.dart';

/// @nodoc
class ChapterEditorListeners {
  /// @nodoc
  ChapterEditorListeners(this.homeNavMethods);

  /// @nodoc
  final HomeNavigationMethods homeNavMethods;

  /// @nodoc
  void listener(BuildContext context, ChapterEditorDatabaseState state) {
    state.chapterDatabaseFailureOrSuccessOption.fold(
      () {},
      (some) => some.fold(
        (_) {},
        (success) {
          if (success is ChapterPublishedSCS) {
            switch (state.editorContentOrigin) {
              case EditorContentOrigin.library:
                context
                    .read<CoreDatabaseBloc>()
                    .add(CoreDatabaseEvent.chapterPublishedFromLibraryEvent(
                      state.chapterDraft,
                    ));
                break;
              case EditorContentOrigin.chapter:
                context
                    .read<CoreDatabaseBloc>()
                    .add(CoreDatabaseEvent.chapterPublishedFromChapterEvent(
                      state.chapterDraft,
                    ));

                ExtendedNavigator.root.pop();
                break;
              default:
            }
          }
        },
      ),
    );

    state.chapterDraftDatabaseFailureOrSuccessOption.fold(
      () {},
      (some) => some.fold(
        (_) {},
        (success) {
          success.maybeMap(
            onlineChapterDraftDeletedSCS: (_) {
              if (state.editorContentOrigin == EditorContentOrigin.library) {
                context
                    .read<CoreDatabaseBloc>()
                    .add(CoreDatabaseEvent.chapterDraftDeletedFromLibraryEvent(
                      chapterDraftUID: state.chapterDraft.uid,
                    ));

                if (!state.isFirstChapter) {
                  ExtendedNavigator.root.pop();
                }
              }
            },
            onlineChapterDraftSavedSCS: (subSuccess) {
              if (state.editorContentOrigin == EditorContentOrigin.library) {
                context
                    .read<CoreDatabaseBloc>()
                    .add(CoreDatabaseEvent.chapterDraftSavedFromLibraryEvent(
                      subSuccess.chapterDraft,
                    ));
              }
              ExtendedNavigator.root.pop();
            },
            orElse: () {},
          );
        },
      ),
    );

    state.placeholderDatabaseFailureOrSuccessOption.fold(
      () {},
      (a) => null,
    );

    state.seriesDatabaseFailureOrSuccessOption.fold(
      () {},
      (some) => some.fold(
        (_) {},
        (success) {
          if (success is SeriesPublishedSCS) {
            switch (state.editorContentOrigin) {
              case EditorContentOrigin.library:
                context
                    .read<CoreDatabaseBloc>()
                    .add(CoreDatabaseEvent.seriesPublishedFromLibraryEvent(
                      success.series,
                    ));
                break;
              case EditorContentOrigin.home:
                context
                    .read<CoreDatabaseBloc>()
                    .add(CoreDatabaseEvent.seriesPublishedFromHomeEvent(
                      success.series,
                    ));
                break;
              default:
            }
          }
        },
      ),
    );

    state.seriesDraftDatabaseFailureOrSuccessOption.fold(
      () {},
      (some) => some.fold(
        (_) {},
        (success) {
          if (success is OnlineSeriesDraftDeletedSCS) {
            if (state.editorContentOrigin == EditorContentOrigin.library ||
                state.editorContentOrigin == EditorContentOrigin.home) {
              ExtendedNavigator.root.pop();
            }
          }
        },
      ),
    );

    state.sessionDatabaseFailureOrSuccessOption.fold(
      () {},
      (a) => null,
    );
  }
}
