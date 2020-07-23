import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:wine/application/database/home/home_database_bloc.dart';
import 'package:wine/presentation/pages/home/utils/home_methods.dart';
import 'package:wine/presentation/pages/home/widgets/home_no_series_found_layout.dart';
import 'package:wine/presentation/pages/home/widgets/home_top_five_series_layout.dart';

class HomeTopSeriesLayout extends StatelessWidget {
  final HomeMethods _homeMethods = HomeMethods();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeDatabaseBloc, HomeDatabaseState>(
      builder: (context, homeDbState) {
        if (homeDbState.topSeriesMinified.isEmpty) {
          return HomeNoSeriesFoundLayout(
            language: homeDbState.languagesMap[homeDbState.languageFilterKey],
            time: homeDbState.timesMap[homeDbState.timeFilterKey],
          );
        }
        return ListView(
          children: <Widget>[
            if (homeDbState.topFiveSeriesMinified.isNotEmpty)
              HomeTopFiveSeriesLayout(
                topFiveSeriesMinified: homeDbState.topFiveSeriesMinified,
                genreStr: homeDbState.genresMap[homeDbState.genreFilterKey],
                timeStr: homeDbState.timesMap[homeDbState.timeFilterKey],
              ),
            const SizedBox(height: 20),
            if (homeDbState.topSeriesMinified.isNotEmpty)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 19.0),
                child: StaggeredGridView.count(
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 3,
                  staggeredTiles: _homeMethods.generateStaggeredTiles(homeDbState.topSeriesMinified),
                  crossAxisSpacing: 20.0,
                  shrinkWrap: true,
                  children: _homeMethods.generateTiles(homeDbState.topSeriesMinified),
                ),
              ),
            const SizedBox(height: 20),
          ],
        );
      },
    );
  }
}
