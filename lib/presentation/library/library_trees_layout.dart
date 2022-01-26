import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/library/library_bloc.dart';
import 'package:wine/domain/tree/tree.dart';
import 'package:wine/presentation/library/library_base_tree_layout.dart';
import 'package:wine/presentation/library/widgets/library_vertical_navbar.dart';
import 'package:wine/utils/constants/library.dart';

/// @nodoc
class LibraryTreesLayout extends StatelessWidget {
  /// @nodoc
  const LibraryTreesLayout({Key? key}) : super(key: key);

  List<Tree> _getTree(LibraryState state, String type) {
    switch (type) {
      case 'published':
        return state.trees.where((s) => s.isPublished == true).toList();
      case 'drafts':
        return state.trees.where((s) => s.isPublished == false).toList();
      case 'bookmarks':
        return state.bookmarkedTree;
      default:
        return <Tree>[];
    }
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return BlocBuilder<LibraryBloc, LibraryState>(
      builder: (context, state) {
        return Row(
          children: <Widget>[
            LibraryVerticalNavbar(
              currentIndex: state.currentVerticalNavbarIdx,
              items: libraryVerticalNavbarKeys,
              width: mediaQuery.width * .2,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: LibraryBaseTreeLayout(
                  treeList: _getTree(
                    state,
                    libraryVerticalNavbarKeys[state.currentVerticalNavbarIdx],
                  ),
                  type:
                      libraryVerticalNavbarKeys[state.currentVerticalNavbarIdx],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
