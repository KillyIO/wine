import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:wine/domain/models/hive/series_draft.dart';
import 'package:wine/domain/models/series.dart';
import 'package:wine/domain/models/user.dart';
import 'package:wine/presentation/widgets/wine_series_card.dart';
import 'package:wine/routes.dart';
import 'package:wine/utils/arguments.dart';
import 'package:wine/utils/constants.dart';

class AccountStaggeredTileMethods {
  List<StaggeredTile> generateStaggeredTiles({List<Series> series, List<SeriesDraft> seriesDrafts}) {
    final List<StaggeredTile> staggeredTiles = <StaggeredTile>[];

    if (series != null) {
      for (final _ in series) {
        staggeredTiles.add(const StaggeredTile.count(1, 1.7));
      }
    } else {
      for (final _ in seriesDrafts) {
        staggeredTiles.add(const StaggeredTile.count(1, 1.7));
      }
    }

    return staggeredTiles;
  }

  List<Widget> generateTiles({List<Series> series, User author, List<SeriesDraft> seriesDrafts, String username}) {
    final List<Widget> tiles = <Widget>[];

    if (series != null) {
      for (final Series s in series) {
        s.author = author;

        tiles.add(
          WINESeriesCard(
            uid: s.uid,
            title: s.title,
            coverUrl: s.coverUrl,
            authorName: author.username,
            onPressed: () => sailor.navigate(Constants.seriesRoute, args: SeriesPageArgs(series: s)),
            titleFontSize: 16.0,
            authorNameFontSize: 15.0,
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
            authorName: username,
            onPressed: () => sailor.navigate(
              Constants.newSeriesRoute,
              args: NewSeriesPageArgs(seriesDraft: sd, routeBack: Constants.accountRoute),
            ),
            titleFontSize: 16.0,
            authorNameFontSize: 15.0,
          ),
        );
      }
    }

    return tiles;
  }
}
