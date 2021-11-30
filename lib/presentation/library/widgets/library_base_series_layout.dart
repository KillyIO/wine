import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:wine/domain/series/series.dart';
import 'package:wine/presentation/core/series/series_card.dart';
import 'package:wine/utils/assets/images.dart';

/// @nodoc
class LibraryBaseSeriesLayout extends StatelessWidget {
  /// @nodoc
  const LibraryBaseSeriesLayout({
    Key? key,
    required this.seriesList,
  }) : super(key: key);

  /// @nodoc
  final List<Series> seriesList;

  List<StaggeredTile> get _generateStaggeredTiles {
    final staggeredTiles = <StaggeredTile>[];

    for (final _ in seriesList) {
      staggeredTiles.add(const StaggeredTile.count(1, 1.7));
    }

    return staggeredTiles;
  }

  List<Widget> get _generateTiles {
    final tiles = <Widget>[];

    for (final s in seriesList) {
      tiles.add(
        SeriesCard(
          coverURL: s.coverURL.getOrNull() ?? '',
          onPressed: () {},
          title: s.title.getOrNull() ?? '',
          uid: s.uid.getOrCrash(),
        ),
      );
    }

    return tiles;
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    if (seriesList.isEmpty) {
      return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Image.asset(
              treeImage,
              fit: BoxFit.contain,
              width: mediaQuery.width * .35,
            ),
            const Text(
              'Nothing was found.',
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      );
    }
    return ScrollConfiguration(
      behavior: const ScrollBehavior(),
      child: ListView(children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: StaggeredGridView.count(
            crossAxisCount: 2,
            staggeredTiles: _generateStaggeredTiles,
            crossAxisSpacing: 20,
            shrinkWrap: true,
            children: _generateTiles,
          ),
        ),
      ]),
    );
  }
}
