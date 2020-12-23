import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:wine/domain/enums/editor_content_origin.dart';
import 'package:wine/domain/models/series.dart';
import 'package:wine/presentation/routes/router.gr.dart';
import 'package:wine/presentation/widgets/wine_series_card.dart';

/// @nodoc
class LibraryStaggeredTileMethods {
  /// @nodoc
  List<StaggeredTile> generateStaggeredTiles({
    List<Series> seriesList,
  }) {
    final staggeredTiles = <StaggeredTile>[];

    for (final _ in seriesList) {
      staggeredTiles.add(const StaggeredTile.count(1, 1.7));
    }

    return staggeredTiles;
  }

  /// @nodoc
  List<Widget> generateTiles({
    List<Series> seriesList,
    bool isDraft = false,
  }) {
    final tiles = <Widget>[];

    for (final series in seriesList) {
      tiles.add(
        WINESeriesCard(
          uid: series.uid,
          title: series.title,
          coverURL: series.coverURL,
          authorUsername: series.authorUsername,
          onPressed: () async => isDraft
              ? ExtendedNavigator.root.push(
                  Routes.seriesEditorPage,
                  arguments: SeriesEditorPageArguments(
                    editorContentOrigin: EditorContentOrigin.library,
                    seriesDraft: series,
                  ),
                )
              : ExtendedNavigator.root.push(
                  Routes.seriesPage,
                  arguments: SeriesPageArguments(series: series),
                ),
          titleFontSize: 16.0,
          authorUsernameFontSize: 15.0,
        ),
      );
    }

    return tiles;
  }
}
