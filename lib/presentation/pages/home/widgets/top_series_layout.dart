import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:wine/application/database/home/home_database_bloc.dart';
import 'package:wine/domain/models/series.dart';
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
    List<String> placeholderList,
  ) {
    final List<Widget> tiles = <Widget>[];

    for (final Series series in seriesList) {
      tiles.add(
        WINESeriesCard(
          title: series.title,
          username: series.author.username,
          coverUrl: series.coverUrl,
          placeholderIndex: _random.nextInt(placeholderList.length),
          placeholderUrls: placeholderList,
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
          return Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: <InlineSpan>[
                      const TextSpan(text: 'No series in '),
                      TextSpan(
                        text: homeDbState
                            .languagesMap[homeDbState.languageFilterKey],
                      ),
                      const TextSpan(text: ' were updated '),
                      TextSpan(
                        text: homeDbState.timesMap[homeDbState.timeFilterKey],
                      ),
                    ],
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Try top series \'this week\'',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
          );
        }
        return ListView(
          children: <Widget>[
            Visibility(
              visible: homeDbState.topFiveSeries.isNotEmpty,
              child: TopFiveSeriesLayout(state: homeDbState),
            ),
            const SizedBox(height: 20),
            if (homeDbState.topSeries.isNotEmpty)
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
                    homeDbState.placeholders,
                  ),
                ),
              ),
          ],
        );
      },
    );
  }
}
