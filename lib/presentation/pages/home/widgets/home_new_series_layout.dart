import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:wine/application/database/home/home_database_bloc.dart';
import 'package:wine/presentation/pages/home/utils/home_methods.dart';
import 'package:wine/presentation/pages/home/widgets/home_no_series_found_layout.dart';

class HomeNewSeriesLayout extends StatelessWidget {
  final HomeMethods _homeMethods = HomeMethods();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeDatabaseBloc, HomeDatabaseState>(
      builder: (context, homeDbState) {
        if (homeDbState.newSeries.isEmpty) {
          return HomeNoSeriesFoundLayout(
            language: homeDbState.languagesMap[homeDbState.languageFilterKey],
            time: homeDbState.timesMap[homeDbState.timeFilterKey],
            isTopSeries: false,
          );
        }
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 19.0, vertical: 20.0),
          child: StaggeredGridView.count(
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 3,
            staggeredTiles: _homeMethods.generateStaggeredTiles(homeDbState.newSeries),
            crossAxisSpacing: 20.0,
            shrinkWrap: true,
            children: _homeMethods.generateTiles(homeDbState.topSeries),
          ),
        );
      },
    );
  }
}
