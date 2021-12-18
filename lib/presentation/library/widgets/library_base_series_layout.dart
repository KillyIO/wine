import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:wine/application/library/library_bloc.dart';
import 'package:wine/domain/core/typewriter_type.dart';
import 'package:wine/domain/series/series.dart';
import 'package:wine/presentation/core/series/series_card.dart';
import 'package:wine/presentation/routes/router.dart';
import 'package:wine/utils/assets/images.dart';
import 'package:wine/utils/functions/navigation_functions.dart';

/// @nodoc
class LibraryBaseSeriesLayout extends StatelessWidget {
  /// @nodoc
  const LibraryBaseSeriesLayout({
    Key? key,
    required this.seriesList,
    required this.type,
  }) : super(key: key);

  /// @nodoc
  final List<Series> seriesList;

  /// @nodoc
  final String type;

  List<StaggeredTile> get _generateStaggeredTiles {
    final staggeredTiles = <StaggeredTile>[];

    for (final _ in seriesList) {
      staggeredTiles.add(const StaggeredTile.count(1, 1.7));
    }

    return staggeredTiles;
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return BlocBuilder<LibraryBloc, LibraryState>(
      buildWhen: (previous, current) =>
          current.isProcessing != previous.isProcessing,
      builder: (context, _) {
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
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: StaggeredGridView.count(
                  crossAxisCount: 2,
                  staggeredTiles: _generateStaggeredTiles,
                  crossAxisSpacing: 20,
                  shrinkWrap: true,
                  children: [
                    for (final s in seriesList)
                      SeriesCard(
                        coverURL: s.coverURL.getOrNull() ?? '',
                        onPressed: () {
                          switch (type) {
                            case 'published':
                              // context.router.root.push(const SeriesRoute());
                              break;
                            case 'drafts':
                              handleAuthGuardedNavigation(
                                context,
                                navigateTo: TypewriterSeriesId(
                                  id: s.uid.getOrCrash(),
                                  series: s,
                                  type: TypewriterType.series,
                                ),
                              );
                              break;
                            case 'bookmarks':
                            default:
                          }
                        },
                        title: s.title.getOrNull() ?? '',
                        uid: s.uid.getOrCrash(),
                      )
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
