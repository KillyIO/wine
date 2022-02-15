import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/library/library_bloc.dart';
import 'package:wine/domain/branch/branch.dart';
import 'package:wine/presentation/library/library_base_branches_layout.dart';
import 'package:wine/presentation/library/widgets/library_vertical_navbar.dart';
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
