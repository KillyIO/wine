import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:wine/application/database/home/home_database_bloc.dart';
import 'package:wine/presentation/utils/home/home_methods.dart';
import 'package:wine/presentation/layouts/home/home_no_series_found_layout.dart';
import 'package:wine/utils/getters.dart';

/// @nodoc
class HomeNewSeriesLayout extends StatelessWidget with Getters {
  final HomeMethods _homeMethods = HomeMethods();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeDatabaseBloc, HomeDatabaseState>(
      builder: (context, homeDatabaseState) {
        if (homeDatabaseState.newSeriesList.isEmpty) {
          return HomeNoSeriesFoundLayout(
            time: homeDatabaseState.timeFilterKey,
          );
        }
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 19.0, vertical: 20.0),
          child: StaggeredGridView.count(
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 3,
            staggeredTiles: _homeMethods
                .generateStaggeredTiles(homeDatabaseState.newSeriesList),
            crossAxisSpacing: 20.0,
            shrinkWrap: true,
            children:
                _homeMethods.generateTiles(homeDatabaseState.newSeriesList),
          ),
        );
      },
    );
  }
}
