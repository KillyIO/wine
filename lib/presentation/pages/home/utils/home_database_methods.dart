import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/database/home/home_database_bloc.dart';

class HomeDatabaseMethods {
  final BuildContext context;

  HomeDatabaseMethods(this.context);

  void applyFilterChanges() => context.bloc<HomeDatabaseBloc>().add(const HomeDatabaseEvent.applyFilterChangesEVT());

  void genreFilterKeyChanged(String key) =>
      context.bloc<HomeDatabaseBloc>().add(HomeDatabaseEvent.genreFilterKeyChangedEVT(key));

  void languageFilterKeyChanged(String key) =>
      context.bloc<HomeDatabaseBloc>().add(HomeDatabaseEvent.languageFilterKeyChangedEVT(key));

  void timeFilterKeyChanged(String key) =>
      context.bloc<HomeDatabaseBloc>().add(HomeDatabaseEvent.timeFilterKeyChangedEVT(key));
}
