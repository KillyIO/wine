import 'package:flutter/widgets.dart';
import 'package:sailor/sailor.dart';
import 'package:wine/application/database/new_series/new_series_database_bloc.dart';
import 'package:wine/domain/database/database_success.dart';
import 'package:wine/routes.dart';
import 'package:wine/utils/arguments.dart';
import 'package:wine/utils/constants.dart';

class NewSeriesListeners {
  void listener(BuildContext context, NewSeriesDatabaseState state) => state.databaseFailureOrSuccessOption.fold(
        () {},
        (some) => some.fold(
          (_) {},
          (success) {
            if (state.isEditMode) {
              Navigator.of(context).pop();
            } else {
              if (success is SeriesDraftSavedSCS) {
                sailor.navigate(
                  Constants.newChapterRoute,
                  navigationType: NavigationType.pushReplace,
                  args: NewChapterPageArgs(seriesDraft: success.seriesDraft, routeBack: Constants.homeRoute),
                );
              }
            }
          },
        ),
      );
}
