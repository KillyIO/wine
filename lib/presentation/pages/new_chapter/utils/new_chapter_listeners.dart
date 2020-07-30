import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/database/core/core_database_bloc.dart';

import 'package:wine/application/database/new_chapter/new_chapter_database_bloc.dart';
import 'package:wine/domain/database/database_success.dart';
import 'package:wine/presentation/pages/home/utils/home_navigation_methods.dart';
import 'package:wine/presentation/widgets/dialog/wine_error_dialog.dart';
import 'package:wine/presentation/widgets/dialog/wine_show_dialog.dart';

class NewChapterListeners {
  final HomeNavigationMethods homeNavMethods;

  NewChapterListeners(this.homeNavMethods);

  void listener(BuildContext context, NewChapterDatabaseState state) => state.databaseFailureOrSuccessOption.fold(
        () {},
        (some) => some.fold(
          (failure) => failure.maybeMap(
            failedToCreateLocalData: (_) => wineShowDialog(
              context: context,
              builder: (_) => WINEErrorDialog(
                message: 'Failed to save data on your device! Please retry.',
                onPressed: () async => ExtendedNavigator.of(context).pop<bool>(true),
              ),
            ),
            orElse: () => null,
          ),
          (success) async {
            if (success is ChapterDraftSavedSCS) {
              ExtendedNavigator.root.pop();
            }
            if (success is ChapterDraftDeletedSCS || (success is ChapterPublishedSCS && !state.isFirstChapter)) {
              if (state.chapterDraft.isNotEmpty && state.previousChapter.isEmpty) {
                context.bloc<CoreDatabaseBloc>().add(const CoreDatabaseEvent.publishedFromAccountEVT());
              } else if (state.seriesDraft.isNotEmpty) {
                context.bloc<CoreDatabaseBloc>().add(const CoreDatabaseEvent.publishedFromHomeEVT());
              } else if (state.previousChapter.isNotEmpty) {
                context.bloc<CoreDatabaseBloc>().add(const CoreDatabaseEvent.publishedFromChapterEVT());
              }
              ExtendedNavigator.root.pop();
            }
          },
        ),
      );
}
