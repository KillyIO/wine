import 'package:flutter/widgets.dart';
import 'package:wine/application/database/series/series_database_bloc.dart';

/// @nodoc
class SeriesListeners {
  /// @nodoc
  void listener(BuildContext context, SeriesDatabaseState state) {
    state.chapterDatabaseFailureOrSuccessOption.fold(
      () {},
      (_) {},
    );

    state.configDatabaseFailureOrSuccessOption.fold(
      () {},
      (_) {},
    );

    state.seriesDatabaseFailureOrSuccessOption.fold(
      () {},
      (_) {},
    );

    state.sessionDatabaseFailureOrSuccessOption.fold(
      () {},
      (_) {},
    );
  }
}
