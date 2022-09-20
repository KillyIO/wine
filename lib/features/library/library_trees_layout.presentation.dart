import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/features/library/library_base_trees_layout.presentation.dart';
import 'package:wine/application/library/library_bloc.dart';
import 'package:wine/features/library/library_vertical_navbar.presentation.dart';
import 'package:wine/features/tree/tree.domain.dart';
import 'package:wine/utils/constants/library.dart';

/// @nodoc
class LibraryTreesLayout extends StatelessWidget {
  /// @nodoc
  const LibraryTreesLayout({super.key});

  List<Tree> _getTrees(LibraryState state, String type) {
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

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        BlocBuilder<LibraryBloc, LibraryState>(
          buildWhen: (previous, current) =>
              current.currentVerticalNavbarIdx !=
              previous.currentVerticalNavbarIdx,
          builder: (context, state) {
            return LibraryVerticalNavbar(
              currentIndex: state.currentVerticalNavbarIdx,
              items: libraryVerticalNavbarKeys,
              width: mediaQuery.width * .2,
            );
          },
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(right: 20),
            child: BlocBuilder<LibraryBloc, LibraryState>(
              builder: (context, state) {
                return LibraryBaseTreesLayout(
                  trees: _getTrees(
                    state,
                    libraryVerticalNavbarKeys[state.currentVerticalNavbarIdx],
                  ),
                  type:
                      libraryVerticalNavbarKeys[state.currentVerticalNavbarIdx],
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
