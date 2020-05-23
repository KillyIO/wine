import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:wine/application/database/account/account_database_bloc.dart';
import 'package:wine/domain/models/series.dart';
import 'package:wine/presentation/widgets/wine_series_card.dart';

class MyPublishedSeriesLayout extends StatelessWidget {
  List<StaggeredTile> _generateStaggeredTiles(List<Series> seriesList) {
    final List<StaggeredTile> staggeredTiles = <StaggeredTile>[];

    for (final _ in seriesList) {
      staggeredTiles.add(const StaggeredTile.count(1, 1.7));
    }

    return staggeredTiles;
  }

  List<Widget> _generateTiles(
    List<Series> seriesList,
    String username,
    List<String> placeholderList,
    List<int> placeholderIndexes,
  ) {
    final List<Widget> tiles = <Widget>[];

    for (int i = 0; i < seriesList.length; i++) {
      tiles.add(
        WINESeriesCard(
          title: seriesList[i].title,
          username: username,
          coverUrl: seriesList[i].coverUrl,
          placeholderIndex: placeholderIndexes[i % placeholderIndexes.length],
          placeholderUrls: placeholderList,
          onPressed: () {},
        ),
      );
    }

    return tiles;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountDatabaseBloc, AccountDatabaseState>(
      builder: (context, acDbState) {
        if (acDbState.series.isEmpty) {
          return const Center(
            child: Text(
              'No series :(',
            ),
          );
        }
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: ScrollConfiguration(
            behavior: const ScrollBehavior(),
            child: StaggeredGridView.count(
              crossAxisCount: 2,
              staggeredTiles: _generateStaggeredTiles(acDbState.series),
              crossAxisSpacing: 20.0,
              children: _generateTiles(
                acDbState.series,
                acDbState.session.username,
                acDbState.placeholders,
                acDbState.placeholderIndexes,
              ),
            ),
          ),
        );
      },
    );
  }
}
