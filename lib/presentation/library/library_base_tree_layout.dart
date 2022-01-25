import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:wine/application/library/library_bloc.dart';
import 'package:wine/domain/core/typewriter_type.dart';
import 'package:wine/domain/tree/tree.dart';
import 'package:wine/presentation/core/tree/tree_card.dart';
import 'package:wine/presentation/routes/router.dart';
import 'package:wine/utils/assets/images.dart';
import 'package:wine/utils/functions/navigation_functions.dart';

/// @nodoc
class LibraryBaseTreeLayout extends StatelessWidget {
  /// @nodoc
  const LibraryBaseTreeLayout({
    Key? key,
    required this.treeList,
    required this.type,
  }) : super(key: key);

  /// @nodoc
  final List<Tree> treeList;

  /// @nodoc
  final String type;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return BlocBuilder<LibraryBloc, LibraryState>(
      buildWhen: (previous, current) =>
          current.isProcessing != previous.isProcessing,
      builder: (context, _) {
        if (treeList.isEmpty) {
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
                  itemCount: treeList.length,
                  itemBuilder: (_, i) => TreeCard(
                    coverURL: treeList[i].coverURL.getOrNull() ?? '',
                    onPressed: () {
                      switch (type) {
                        case 'published':
                          handleAuthGuardedNavigation(
                            context,
                            navigateTo: TreeRoute(
                              id: treeList[i].uid.getOrCrash(),
                              tree: treeList[i],
                            ),
                          );
                          break;
                        case 'drafts':
                          handleAuthGuardedNavigation(
                            context,
                            navigateTo: TypewriterTreeId(
                              id: treeList[i].uid.getOrCrash(),
                              tree: treeList[i],
                              type: TypewriterType.tree,
                            ),
                          );
                          break;
                        case 'bookmarks':
                        default:
                      }
                    },
                    title: treeList[i].title.getOrNull() ?? '',
                    uid: treeList[i].uid.getOrCrash(),
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
