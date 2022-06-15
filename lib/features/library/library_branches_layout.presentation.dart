import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/features/library/library_bloc.application.dart';
import 'package:wine/features/branch/branch.domain.dart';
import 'package:wine/features/library/library_base_branches_layout.presentation.dart';
import 'package:wine/features/library/library_vertical_navbar.presentation.dart';
import 'package:wine/utils/constants/library.dart';

/// @nodoc
class LibraryBranchesLayout extends StatelessWidget {
  /// @nodoc
  const LibraryBranchesLayout({Key? key}) : super(key: key);

  List<Branch> _getBranches(LibraryState state, String type) {
    switch (type) {
      case 'published':
        return state.branches.where((s) => s.isPublished == true).toList();
      case 'drafts':
        return state.branches.where((s) => s.isPublished == false).toList();
      case 'bookmarks':
        return state.bookmarkedBranches;
      default:
        return <Branch>[];
    }
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BlocBuilder<LibraryBloc, LibraryState>(
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
                return LibraryBaseBranchesLayout(
                  branches: _getBranches(
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
