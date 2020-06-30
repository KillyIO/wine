import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:wine/application/database/account/account_database_bloc.dart';
import 'package:wine/domain/models/hive/series_draft.dart';
import 'package:wine/injection.dart';
import 'package:wine/presentation/pages/account/utils/account_staggered_tile_methods.dart';

class AccountMySeriesDraftsLayout extends StatelessWidget {
  final AccountStaggeredTileMethods _methods = AccountStaggeredTileMethods();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountDatabaseBloc, AccountDatabaseState>(
      builder: (context, acDbState) {
        return ValueListenableBuilder(
          valueListenable: getIt<Box<SeriesDraft>>().listenable(),
          builder: (context, Box<SeriesDraft> box, _) {
            if (box.isEmpty) {
              return Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Image.asset(
                      'assets/img/tree.png',
                      fit: BoxFit.contain,
                      width: MediaQuery.of(context).size.width / 1.5,
                    ),
                    const Text('No series drafts found.', style: TextStyle(fontWeight: FontWeight.w600)),
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
                    staggeredTiles: _methods.generateStaggeredTiles(seriesDrafts: box.values.toList()),
                    crossAxisSpacing: 20.0,
                    shrinkWrap: true,
                    children: _methods.generateTiles(
                      seriesDrafts: box.values.toList(),
                      username: acDbState.session.username,
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
