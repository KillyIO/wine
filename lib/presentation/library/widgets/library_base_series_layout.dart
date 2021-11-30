import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:wine/application/library/library_bloc.dart';
import 'package:wine/domain/series/series.dart';
import 'package:wine/presentation/core/series/series_card.dart';
import 'package:wine/utils/assets/images.dart';
import 'package:wine/utils/constants/library.dart';

/// @nodoc
class LibraryBaseSeriesLayout extends StatelessWidget {
  /// @nodoc
  const LibraryBaseSeriesLayout({Key? key}) : super(key: key);

  List<StaggeredTile> _generateStaggeredTiles(List<Series> series) {
    final staggeredTiles = <StaggeredTile>[];

    for (final _ in series) {
      staggeredTiles.add(const StaggeredTile.count(1, 1.7));
    }

    return staggeredTiles;
  }

  List<Widget> _generateTiles(List<Series> series, int verticalNavbarIdx) {
    final tiles = <Widget>[];
    final isDraft = libraryVerticalNavbarKeys[verticalNavbarIdx] == 'drafts';

    List<Series> filteredSeries;
    if (isDraft) {
      filteredSeries = series.where((s) => s.isPublished == false).toList();
    } else {
      filteredSeries = series.where((s) => s.isPublished == true).toList();
    }

    for (final s in filteredSeries) {
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

  bool _isEmpty(List<Series> series, int verticalNavbarIdx) {
    if (libraryVerticalNavbarKeys[verticalNavbarIdx] == 'drafts') {
      return series.where((s) => s.isPublished == false).toList().isEmpty;
    }
    return series.where((s) => s.isPublished == true).toList().isEmpty;
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return BlocBuilder<LibraryBloc, LibraryState>(
      builder: (context, state) {
        if (_isEmpty(state.seriesList, state.currentVerticalNavbarIdx)) {
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
                staggeredTiles: _generateStaggeredTiles(state.seriesList),
                crossAxisSpacing: 20,
                shrinkWrap: true,
                children: _generateTiles(
                  state.seriesList,
                  state.currentVerticalNavbarIdx,
                ),
              ),
            ),
          ]),
        );
      },
    );
  }
}
