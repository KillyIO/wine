import 'package:flutter/widgets.dart';
import 'package:wine/application/database/series/series_database_bloc.dart';

class SeriesListeners {
  void listener(BuildContext context, SeriesDatabaseState state) =>
      state.databaseFailureOrSuccessOption.fold(() {}, (some) => some.fold((_) {}, (_) {}));
}
