import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:wine/application/library/library_bloc.dart';
import 'package:wine/domain/tree/tree.dart';
import 'package:wine/presentation/core/tree/tree_card.dart';
import 'package:wine/presentation/routes/router.dart';
import 'package:wine/utils/constants/images.dart';

class LibraryBaseTreesLayout extends StatelessWidget {
  const LibraryBaseTreesLayout({
    required this.trees,
    required this.type,
    super.key,
  });

  final List<Tree> trees;

  final String type;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return BlocBuilder<LibraryBloc, LibraryState>(
      buildWhen: (previous, current) =>
          current.isProcessing != previous.isProcessing,
      builder: (context, _) {
        if (trees.isEmpty) {
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
          child: AlignedGridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 20,
            padding: const EdgeInsets.symmetric(vertical: 20),
            shrinkWrap: true,
            itemCount: trees.length,
            itemBuilder: (_, i) => TreeCard(
              coverURL: trees[i].coverURL.getOrNull(),
              language: trees[i].language.getOrNull(),
              onPressed: () {
                switch (type) {
                  case 'drafts':
                    context.router.push(
                      TypewriterTreeUIDRoute(
                        tree: trees[i],
                        uid: trees[i].uid.getOrCrash(),
                      ),
                    );
                  default:
                    context.router.push(
                      TreeRoute(
                        tree: trees[i],
                        uid: trees[i].uid.getOrCrash(),
                      ),
                    );
                    break;
                }
              },
              title: trees[i].title.getOrNull(),
              uid: trees[i].uid.getOrCrash(),
            ),
          ),
        );
      },
    );
  }
}
