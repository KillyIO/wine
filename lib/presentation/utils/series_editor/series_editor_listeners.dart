import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/database/core/core_database_bloc.dart';

import 'package:wine/application/database/series_editor/series_editor_database_bloc.dart';
import 'package:wine/domain/database/successes/chapter_draft_database_success.dart';
import 'package:wine/domain/database/successes/series_draft_database_success.dart';
import 'package:wine/domain/enums/editor_content_origin.dart';
import 'package:wine/presentation/routes/router.gr.dart';

/// @nodoc
class SeriesEditorListeners {
  /// @nodoc
  void listener(BuildContext context, SeriesEditorDatabaseState state) {
    state.chapterDraftDatabaseFailureOrSuccessOption.fold(
      () {},
      (success) {
        if (state.isEditMode && success is OnlineChapterDraftDeletedSCS) {
          if (state.editorContentOrigin == EditorContentOrigin.library) {
            context
                .read<CoreDatabaseBloc>()
                .add(CoreDatabaseEvent.chapterDraftDeletedFromLibraryEvent(
                  seriesDraftUID: state.seriesDraft.uid,
                ));
          }
        }
      },
    );

    state.placeholderDatabaseFailureOrSuccessOption.fold(
      () {},
      (a) => null,
    );

    state.seriesDraftDatabaseFailureOrSuccessOption.fold(
      () {},
      (some) => some.fold(
        (_) {},
        (success) async {
          if (state.isEditMode) {
            success.maybeMap(
              onlineSeriesDraftDeletedSCS: (_) {
                if (state.editorContentOrigin == EditorContentOrigin.library) {
                  context
                      .read<CoreDatabaseBloc>()
                      .add(CoreDatabaseEvent.seriesDraftDeletedFromLibraryEvent(
                        state.seriesDraft.uid,
                      ));
                }
              },
              onlineSeriesDraftSavedSCS: (subSuccess) {
                if (state.editorContentOrigin == EditorContentOrigin.library) {
                  context
                      .read<CoreDatabaseBloc>()
                      .add(CoreDatabaseEvent.seriesDraftSavedFromLibraryEvent(
                        subSuccess.seriesDraft,
                      ));
                }
              },
              orElse: () {},
            );

            ExtendedNavigator.root.pop();
          } else {
            if (success is OnlineSeriesDraftSavedSCS) {
              await ExtendedNavigator.root.replace(
                Routes.chapterEditorPage,
                arguments: ChapterEditorPageArguments(
                  editorContentOrigin: state.editorContentOrigin,
                  seriesDraft: success.seriesDraft,
                ),
              );
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
