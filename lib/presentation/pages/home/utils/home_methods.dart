import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:wine/domain/models/series_minified.dart';
import 'package:wine/presentation/routes/router.gr.dart';
import 'package:wine/presentation/widgets/wine_series_card.dart';

class HomeMethods {
  List<StaggeredTile> generateStaggeredTiles(List<SeriesMinified> seriesMinifiedList) {
    final List<StaggeredTile> staggeredTiles = <StaggeredTile>[];

    for (final _ in seriesMinifiedList) {
      staggeredTiles.add(const StaggeredTile.count(1, 2));
    }

    return staggeredTiles;
  }

  List<Widget> generateTiles(List<SeriesMinified> seriesMinifiedList) {
    final List<Widget> tiles = <Widget>[];

    for (int i = 0; i < seriesMinifiedList.length; i++) {
      tiles.add(
        WINESeriesCard(
          uid: seriesMinifiedList[i].uid,
          title: seriesMinifiedList[i].title,
          coverUrl: seriesMinifiedList[i].coverUrl,
          authorUsername: seriesMinifiedList[i].authorUsername,
          onPressed: () async => ExtendedNavigator.root.push(
            Routes.seriesPage,
            arguments: SeriesPageArguments(seriesUid: seriesMinifiedList[i].uid),
          ),
          titleFontSize: 13.0,
          authorUsernameFontSize: 13.0,
        ),
      );
    }

    return tiles;
  }
}
