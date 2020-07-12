import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';

import 'package:wine/application/database/new_chapter/new_chapter_database_bloc.dart';
import 'package:wine/domain/database/database_success.dart';
import 'package:wine/presentation/pages/home/utils/home_navigation_methods.dart';
import 'package:wine/presentation/widgets/wine_error_dialog.dart';
import 'package:wine/presentation/widgets/wine_show_dialog.dart';

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
          (success) {
            if (success is ChapterDraftSavedSCS) {
              ExtendedNavigator.root.pop();
            }
            if (success is ChapterDraftDeletedSCS) {
              ExtendedNavigator.root.pop<String>('published');
            }
          },
        ),
      );
}
