import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:wine/application/database/account/account_database_bloc.dart';
import 'package:wine/domain/models/hive/series_draft.dart';
import 'package:wine/injection.dart';
import 'package:wine/presentation/pages/account/widgets/series_draft_card.dart';

class MySeriesDraftsLayout extends StatelessWidget {
  List<StaggeredTile> _generateStaggeredTiles(List<SeriesDraft> seriesList) {
    final List<StaggeredTile> staggeredTiles = <StaggeredTile>[];

    for (final _ in seriesList) {
      staggeredTiles.add(const StaggeredTile.count(1, 1.7));
    }

    return staggeredTiles;
  }

  List<Widget> _generateTiles(
    List<SeriesDraft> seriesList,
    List<String> placeholderList,
    List<int> placeholderIndexes,
  ) {
    final List<Widget> tiles = <Widget>[];

    for (int i = 0; i < seriesList.length; i++) {
      tiles.add(
        SeriesDraftCard(
          title: seriesList[i].title,
          coverPath: seriesList[i].coverPath,
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
        return ValueListenableBuilder(
          valueListenable: getIt<Box<SeriesDraft>>().listenable(),
          builder: (context, Box<SeriesDraft> box, _) {
            if (box.isEmpty) {
              return const Text('No series drafts :(');
            }
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: ScrollConfiguration(
                behavior: const ScrollBehavior(),
                child: StaggeredGridView.count(
                  crossAxisCount: 2,
                  staggeredTiles: _generateStaggeredTiles(box.values.toList()),
                  crossAxisSpacing: 20.0,
                  children: _generateTiles(
                    box.values.toList(),
                    acDbState.placeholders,
                    acDbState.placeholderIndexes,
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
