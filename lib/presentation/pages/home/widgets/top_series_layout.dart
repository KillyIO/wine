import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:wine/application/database/home/home_database_bloc.dart';
import 'package:wine/domain/models/series.dart';
import 'package:wine/presentation/pages/home/widgets/no_series_found_layout.dart';
import 'package:wine/presentation/pages/home/widgets/top_five_series_layout.dart';
import 'package:wine/presentation/widgets/wine_series_card.dart';

class TopSeriesLayout extends StatelessWidget {
  final Random _random = Random();

  List<StaggeredTile> _generateStaggeredTiles(List<Series> seriesList) {
    final List<StaggeredTile> staggeredTiles = <StaggeredTile>[];

    for (final _ in seriesList) {
      staggeredTiles.add(const StaggeredTile.count(1, 2));
    }

    return staggeredTiles;
  }

  List<Widget> _generateTiles(
    List<Series> seriesList,
    List<String> placeholderUrls,
  ) {
    final List<Widget> tiles = <Widget>[];

    for (int i = 0; i < seriesList.length; i++) {
      tiles.add(
        WINESeriesCard(
          uid: seriesList[i].uid,
          title: seriesList[i].title,
          username: seriesList[i].author.username,
          coverUrl: seriesList[i].coverUrl,
          placeholderUrl: placeholderUrls[i % placeholderUrls.length],
          onPressed: () {},
        ),
      );
    }

    return tiles;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeDatabaseBloc, HomeDatabaseState>(
      builder: (context, homeDbState) {
        if (homeDbState.topFiveSeries.isEmpty &&
            homeDbState.topSeries.isEmpty) {
          return NoSeriesFoundLayout(
            language: homeDbState.languagesMap[homeDbState.languageFilterKey],
            time: homeDbState.timesMap[homeDbState.timeFilterKey],
          );
        }
        return ListView(
          children: <Widget>[
            if (homeDbState.topFiveSeries.isNotEmpty)
              TopFiveSeriesLayout(state: homeDbState),
            const SizedBox(height: 20),
            if (homeDbState.topSeries.isNotEmpty &&
                homeDbState.placeholderUrls.isNotEmpty)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 19.0),
                child: StaggeredGridView.count(
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 3,
                  staggeredTiles:
                      _generateStaggeredTiles(homeDbState.topSeries),
                  crossAxisSpacing: 20.0,
                  shrinkWrap: true,
                  children: _generateTiles(
                    homeDbState.topSeries,
                    homeDbState.placeholderUrls,
                  ),
                ),
              ),
            const SizedBox(height: 20),
          ],
        );
      },
    );
  }
}
