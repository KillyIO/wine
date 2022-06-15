import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:wine/features/library/library_bloc.application.dart';
import 'package:wine/core/typewriter_type.domain.dart';
import 'package:wine/domain/tree/tree.dart';
import 'package:wine/core/tree/tree_card.presentation.dart';
import 'package:wine/presentation/routes/router.dart';
import 'package:wine/utils/assets/images.dart';
import 'package:wine/utils/functions/navigation_functions.dart';

/// @nodoc
class LibraryBaseTreesLayout extends StatelessWidget {
  /// @nodoc
  const LibraryBaseTreesLayout({
    Key? key,
    required this.trees,
    required this.type,
  }) : super(key: key);

  /// @nodoc
  final List<Tree> trees;

  /// @nodoc
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
                    handleAuthGuardedNavigation(
                      context,
                      navigateTo: TypewriterTreeUID(
                        tree: trees[i],
                        type: TypewriterType.tree,
                        uid: trees[i].uid.getOrCrash(),
                      ),
                    );
                    break;
                  default:
                    handleAuthGuardedNavigation(
                      context,
                      navigateTo: TreeRoute(
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
