import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:wine/application/database/series/series_database_bloc.dart';

class SeriesDatabaseMethods {
  final BuildContext context;

  SeriesDatabaseMethods(this.context);

  void bookmarkButtonPressed() =>
      context.bloc<SeriesDatabaseBloc>().add(const SeriesDatabaseEvent.bookmarkButtonPressedEVT());

  void likeButtonPressed() => context.bloc<SeriesDatabaseBloc>().add(const SeriesDatabaseEvent.likeButtonPressedEVT());
}
