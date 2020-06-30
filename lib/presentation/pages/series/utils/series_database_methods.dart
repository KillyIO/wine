import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:wine/application/database/series/series_database_bloc.dart';
import 'package:wine/domain/models/series.dart';

class SeriesDatabaseMethods {
  final BuildContext context;

  SeriesDatabaseMethods(this.context);

  void bookmarkButtonPressed() =>
      context.bloc<SeriesDatabaseBloc>().add(const SeriesDatabaseEvent.bookmarkButtonPressedEVT());

  void likeButtonPressed() => context.bloc<SeriesDatabaseBloc>().add(const SeriesDatabaseEvent.likeButtonPressedEVT());

  void readChapterOneButtonPressed() =>
      context.bloc<SeriesDatabaseBloc>().add(const SeriesDatabaseEvent.readChapterOneButtonPressedEVT());

  void seriesPageLaunched(Series series) => context
      .bloc<SeriesDatabaseBloc>()
      .add(SeriesDatabaseEvent.seriesPageLaunchedEVT(series: series, context: context));
}
