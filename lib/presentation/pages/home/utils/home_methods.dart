import 'package:flutter/widgets.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:wine/domain/models/series.dart';
import 'package:wine/presentation/widgets/wine_series_card.dart';
import 'package:wine/routes.dart';
import 'package:wine/utils/arguments.dart';
import 'package:wine/utils/constants.dart';

class HomeMethods {
  List<StaggeredTile> generateStaggeredTiles(List<Series> seriesList) {
    final List<StaggeredTile> staggeredTiles = <StaggeredTile>[];

    for (final _ in seriesList) {
      staggeredTiles.add(const StaggeredTile.count(1, 2));
    }

    return staggeredTiles;
  }

  List<Widget> generateTiles(List<Series> seriesList) {
    final List<Widget> tiles = <Widget>[];

    for (int i = 0; i < seriesList.length; i++) {
      tiles.add(
        WINESeriesCard(
          uid: seriesList[i].uid,
          title: seriesList[i].title,
          coverUrl: seriesList[i].coverUrl,
          authorName: seriesList[i].author.username,
          onPressed: () => sailor.navigate(Constants.seriesRoute, args: SeriesPageArgs(series: seriesList[i])),
          titleFontSize: 13.0,
          authorNameFontSize: 13.0,
        ),
      );
    }

    return tiles;
  }
}
