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
            if (success is ChapterDraftSavedSCS ||
                (success is ChapterDraftDeletedSCS && !state.isFirstChapter) ||
                (success is SeriesDraftDeletedSCS && state.isFirstChapter)) {
              Navigator.of(context).popUntil((route) => route.settings.name == args.routeBack);
            }
          },
        ),
      );
}
