import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:wine/domain/tree/tree.dart';
import 'package:wine/presentation/core/tree/tree_card.dart';
import 'package:wine/presentation/routes/router.dart';
import 'package:wine/utils/assets/images.dart';

/// @nodoc
class HomeTreesLayout extends StatelessWidget {
  /// @nodoc
  const HomeTreesLayout({
    super.key,
    required this.timeKey,
    required this.trees,
  });

  /// @nodoc
  final String timeKey;

  /// @nodoc
  final List<Tree> trees;

  @override
  Widget build(BuildContext context) {
    if (trees.isEmpty) {
      return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Image.asset(
              treeImage,
              fit: BoxFit.contain,
              width: MediaQuery.of(context).size.width * .35,
            ),
            Text(
              'Nothing found $timeKey',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              "Try looking for series 'this week'",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
      );
    }
    return AlignedGridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 10,
      mainAxisSpacing: 20,
      padding: const EdgeInsets.all(20),
      shrinkWrap: true,
      itemCount: trees.length,
      itemBuilder: (_, i) => TreeCard(
        coverURL: trees[i].coverURL.getOrNull(),
        language: trees[i].language.getOrNull(),
        onPressed: () => context.router.root.push(
          TreeRoute(
            tree: trees[i],
            uid: trees[i].uid.getOrCrash(),
          ),
        ),
        title: trees[i].title.getOrNull(),
        uid: trees[i].uid.getOrCrash(),
      ),
    );
  }
}
