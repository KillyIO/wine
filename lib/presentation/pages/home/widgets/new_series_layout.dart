import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:wine/application/database/home/home_database_bloc.dart';
import 'package:wine/domain/models/series.dart';
import 'package:wine/presentation/pages/home/widgets/no_series_found_layout.dart';
import 'package:wine/presentation/widgets/wine_series_card.dart';

class NewSeriesLayout extends StatelessWidget {
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
    List<int> placeholderIndexes,
  ) {
    final List<Widget> tiles = <Widget>[];

    for (int i = 0; i < seriesList.length; i++) {
      tiles.add(
        WINESeriesCard(
          title: seriesList[i].title,
          username: seriesList[i].author.username,
          coverUrl: seriesList[i].coverUrl,
          placeholderIndex: placeholderIndexes[i % placeholderIndexes.length],
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
        if (homeDbState.newSeries.isEmpty) {
          return NoSeriesFoundLayout(
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
            staggeredTiles: _generateStaggeredTiles(homeDbState.newSeries),
            crossAxisSpacing: 20.0,
            shrinkWrap: true,
            children: _generateTiles(
              homeDbState.topSeries,
              homeDbState.placeholders,
              homeDbState.placeholderIndexes,
            ),
          ),
        );
      },
    );
  }
}
