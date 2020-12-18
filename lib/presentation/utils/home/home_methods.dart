import 'package:auto_route/auto_route.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter/widgets.dart';
import 'package:wine/domain/models/series.dart';
import 'package:wine/presentation/routes/router.gr.dart';
import 'package:wine/presentation/widgets/wine_series_card.dart';

/// @nodoc
class HomeMethods {
  /// @nodoc
  List<StaggeredTile> generateStaggeredTiles(
    List<Series> seriesList,
  ) {
    final staggeredTiles = <StaggeredTile>[];

    for (final _ in seriesList) {
      staggeredTiles.add(const StaggeredTile.count(1, 2));
    }

    return staggeredTiles;
  }

  /// @nodoc
  List<Widget> generateTiles(List<Series> seriesList) {
    final tiles = <Widget>[];

    for (var i = 0; i < seriesList.length; i++) {
      tiles.add(
        WINESeriesCard(
          uid: seriesList[i].uid,
          title: seriesList[i].title,
          coverURL: seriesList[i].coverURL,
          authorUsername: seriesList[i].authorUsername,
          onPressed: () async => ExtendedNavigator.root.push(
            Routes.seriesPage,
            arguments: SeriesPageArguments(series: seriesList[i]),
          ),
          titleFontSize: 13.0,
          authorUsernameFontSize: 13.0,
        ),
      );
    }

    return tiles;
  }
}
