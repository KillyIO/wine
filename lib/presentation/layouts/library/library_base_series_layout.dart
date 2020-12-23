import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:wine/domain/models/series.dart';
import 'package:wine/presentation/utils/library/library_staggered_tile_methods.dart';
import 'package:wine/utils/assets.dart';

/// @nodoc
class LibraryBaseSeriesLayout extends StatelessWidget {
  /// @nodoc
  LibraryBaseSeriesLayout({
    Key key,
    @required this.isDraft,
    @required this.seriesList,
  }) : super(key: key);

  /// @nodoc
  final bool isDraft;

  /// @nodoc
  final List<Series> seriesList;

  final LibraryStaggeredTileMethods _methods = LibraryStaggeredTileMethods();

  @override
  Widget build(BuildContext context) {
    if (seriesList.isEmpty) {
      return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Image.asset(
              Assets.treeImage,
              fit: BoxFit.contain,
              width: MediaQuery.of(context).size.width / 1.5,
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
      child: ListView(
        children: <Widget>[
          const SizedBox(height: 20),
          StaggeredGridView.count(
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            staggeredTiles: _methods.generateStaggeredTiles(
              seriesList: seriesList,
            ),
            crossAxisSpacing: 20.0,
            shrinkWrap: true,
            children: _methods.generateTiles(
              seriesList: seriesList,
              isDraft: isDraft,
            ),
          ),
        ],
      ),
    );
  }
}
