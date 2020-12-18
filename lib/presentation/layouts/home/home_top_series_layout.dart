import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:wine/application/database/home/home_database_bloc.dart';
import 'package:wine/presentation/utils/home/home_methods.dart';
import 'package:wine/presentation/layouts/home/home_no_series_found_layout.dart';
import 'package:wine/presentation/layouts/home/home_top_five_series_layout.dart';
import 'package:wine/utils/getters.dart';

/// @nodoc
class HomeTopSeriesLayout extends StatelessWidget with Getters {
  final HomeMethods _homeMethods = HomeMethods();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeDatabaseBloc, HomeDatabaseState>(
      builder: (context, homeDatabaseState) {
        if (homeDatabaseState.topSeriesList.isEmpty) {
          return HomeNoSeriesFoundLayout(
            time: homeDatabaseState.timeFilterKey,
          );
        }
        return ListView(
          children: <Widget>[
            if (homeDatabaseState.topFiveSeriesList.isNotEmpty)
              HomeTopFiveSeriesLayout(
                topFiveSeriesList: homeDatabaseState.topFiveSeriesList,
                genreStr: homeDatabaseState.genreFilterKey,
                timeStr: homeDatabaseState.timeFilterKey,
              ),
            const SizedBox(height: 20),
            if (homeDatabaseState.topSeriesList.isNotEmpty)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 19.0),
                child: StaggeredGridView.count(
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 3,
                  staggeredTiles: _homeMethods
                      .generateStaggeredTiles(homeDatabaseState.topSeriesList),
                  crossAxisSpacing: 20.0,
                  shrinkWrap: true,
                  children: _homeMethods
                      .generateTiles(homeDatabaseState.topSeriesList),
                ),
              ),
            const SizedBox(height: 20),
          ],
        );
      },
    );
  }
}
