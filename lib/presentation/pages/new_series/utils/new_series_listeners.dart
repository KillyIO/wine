import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';

import 'package:wine/application/database/new_series/new_series_database_bloc.dart';
import 'package:wine/domain/database/database_success.dart';
import 'package:wine/presentation/routes/router.gr.dart';

class NewSeriesListeners {
  void listener(BuildContext context, NewSeriesDatabaseState state) => state.databaseFailureOrSuccessOption.fold(
        () {},
        (some) => some.fold(
          (_) {},
          (success) {
            if (success is SeriesDraftDeletedSCS && state.isEditMode) {
              ExtendedNavigator.root.pop();
            } else {
              if (success is SeriesDraftSavedSCS) {
                ExtendedNavigator.root.pushReplacementNamed(
                  Routes.newChapterPage,
                  arguments: NewChapterPageArguments(
                    seriesDraft: success.seriesDraft,
                  ),
                );
              }
            }
          },
        ),
      );
}
