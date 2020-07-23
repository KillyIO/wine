import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:wine/domain/models/hive/series_draft.dart';
import 'package:wine/domain/models/series_minified.dart';
import 'package:wine/presentation/routes/router.gr.dart';
import 'package:wine/presentation/widgets/wine_series_card.dart';

class AccountStaggeredTileMethods {
  List<StaggeredTile> generateStaggeredTiles({List<SeriesMinified> seriesMinified, List<SeriesDraft> seriesDrafts}) {
    final List<StaggeredTile> staggeredTiles = <StaggeredTile>[];

    if (seriesMinified != null) {
      for (final _ in seriesMinified) {
        staggeredTiles.add(const StaggeredTile.count(1, 1.7));
      }
    } else {
      for (final _ in seriesDrafts) {
        staggeredTiles.add(const StaggeredTile.count(1, 1.7));
      }
    }

    return staggeredTiles;
  }

  List<Widget> generateTiles({List<SeriesMinified> seriesMinified, List<SeriesDraft> seriesDrafts, String username}) {
    final List<Widget> tiles = <Widget>[];

    if (seriesMinified != null) {
      for (final SeriesMinified series in seriesMinified) {
        tiles.add(
          WINESeriesCard(
            uid: series.uid,
            title: series.title,
            coverUrl: series.coverUrl,
            authorUsername: series.authorUsername,
            onPressed: () async => ExtendedNavigator.root.push(
              Routes.seriesPage,
              arguments: SeriesPageArguments(seriesUid: series.uid),
            ),
            titleFontSize: 16.0,
            authorUsernameFontSize: 15.0,
          ),
        );
      }
    } else {
      for (final SeriesDraft sd in seriesDrafts) {
        tiles.add(
          WINESeriesCard(
            uid: sd.uid,
            title: sd.title,
            coverUrl: sd.coverUrl,
            authorUsername: username,
            onPressed: () async => ExtendedNavigator.root.push(
              Routes.newSeriesPage,
              arguments: NewSeriesPageArguments(seriesDraft: sd),
            ),
            titleFontSize: 16.0,
            authorUsernameFontSize: 15.0,
          ),
        );
      }
    }

    return tiles;
  }
}
