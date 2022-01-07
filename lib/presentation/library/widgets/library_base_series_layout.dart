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
                child: MasonryGridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: seriesList.length,
                  itemBuilder: (_, i) => SeriesCard(
                    coverURL: seriesList[i].coverURL.getOrNull() ?? '',
                    onPressed: () {
                      switch (type) {
                        case 'published':
                          handleAuthGuardedNavigation(
                            context,
                            navigateTo: SeriesRoute(
                              id: seriesList[i].uid.getOrCrash(),
                              series: seriesList[i],
                            ),
                          );
                          break;
                        case 'drafts':
                          handleAuthGuardedNavigation(
                            context,
                            navigateTo: TypewriterSeriesId(
                              id: seriesList[i].uid.getOrCrash(),
                              series: seriesList[i],
                              type: TypewriterType.series,
                            ),
                          );
                          break;
                        case 'bookmarks':
                        default:
                      }
                    },
                    title: seriesList[i].title.getOrNull() ?? '',
                    uid: seriesList[i].uid.getOrCrash(),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
