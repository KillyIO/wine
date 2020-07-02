import 'package:flutter/widgets.dart';
import 'package:sailor/sailor.dart';

import 'package:wine/application/database/new_chapter/new_chapter_database_bloc.dart';
import 'package:wine/domain/database/database_success.dart';
import 'package:wine/presentation/pages/home/utils/home_navigation_methods.dart';
import 'package:wine/presentation/widgets/wine_error_dialog.dart';
import 'package:wine/presentation/widgets/wine_show_dialog.dart';
import 'package:wine/routes.dart';
import 'package:wine/utils/arguments.dart';

class NewChapterListeners {
  final HomeNavigationMethods homeNavMethods;
  final NewChapterPageArgs args;

  NewChapterListeners(this.homeNavMethods, this.args);

  void listener(BuildContext context, NewChapterDatabaseState state) => state.databaseFailureOrSuccessOption.fold(
        () {},
        (some) => some.fold(
          (failure) => failure.maybeMap(
            failedToCreateLocalData: (_) => wineShowDialog(
              context: context,
              builder: (_) => WINEErrorDialog(
                message: 'Failed to save data on your device! Please retry.',
                onPressed: () => Navigator.of(context).pop(true),
              ),
            ),
            orElse: () => null,
          ),
          (success) {
            if ((success is ChapterDraftDeletedSCS && !state.isFirstChapter) ||
                success is ChapterDraftSavedSCS ||
                success is SeriesDraftDeletedSCS) {
              if (state.isEditMode) {
                Navigator.of(context).pop();
              } else {
                if (state.isFirstChapter) {
                  sailor.navigate(
                    args.routeBack,
                    navigationType: NavigationType.pushAndRemoveUntil,
                    removeUntilPredicate: (_) => false,
                  );
                  homeNavMethods.resetBloc();
                } else {
                  sailor.navigate(
                    args.routeBack,
                    args: ChapterPageArgs(chapter: args.previousChapter),
                    navigationType: NavigationType.pushAndRemoveUntil,
                    removeUntilPredicate: ModalRoute.withName(args.predicateRoute),
                  );
                }
              }
            }
          },
        ),
      );
}
