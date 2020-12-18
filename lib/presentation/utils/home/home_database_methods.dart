import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/database/home/home_database_bloc.dart';
import 'package:wine/utils/getters.dart';

/// @nodoc
class HomeDatabaseMethods with Getters {
  /// @nodoc
  HomeDatabaseMethods(this.context);

  /// @nodoc
  final BuildContext context;

  /// @nodoc
  void applyFilterChanges(int index) => context
      .read<HomeDatabaseBloc>()
      .add(HomeDatabaseEvent.applyFiltersButtonPressedEVT(index));

  /// @nodoc
  void genreFilterKeyChanged(String key) => context
      .read<HomeDatabaseBloc>()
      .add(HomeDatabaseEvent.genreFilterKeyChangedEVT(key));

  /// @nodoc
  void languageFilterKeyChanged(String key) => context
      .read<HomeDatabaseBloc>()
      .add(HomeDatabaseEvent.languageFilterKeyChangedEVT(key));

  /// @nodoc
  void pageViewIndexChanged(int index) => context
      .read<HomeDatabaseBloc>()
      .add(homeFiltersAppliedOrPageViewIndexChangedEvents[index]);

  /// @nodoc
  void timeFilterKeyChanged(String key) => context
      .read<HomeDatabaseBloc>()
      .add(HomeDatabaseEvent.timeFilterKeyChangedEVT(key));
}
