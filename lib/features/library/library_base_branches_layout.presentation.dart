import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/core/branch/branch_tile.presentation.dart';
import 'package:wine/core/typewriter_type.domain.dart';
import 'package:wine/features/branch/branch.domain.dart';
import 'package:wine/features/library/library_bloc.application.dart';
import 'package:wine/core/routes/router.dart';
import 'package:wine/utils/assets/images.dart';
import 'package:wine/utils/functions/navigation_functions.dart';

/// @nodoc
class LibraryBaseBranchesLayout extends StatelessWidget {
  /// @nodoc
  const LibraryBaseBranchesLayout({
    Key? key,
    required this.branches,
    required this.type,
  }) : super(key: key);

  /// @nodoc
  final List<Branch> branches;

  /// @nodoc
  final String type;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return BlocBuilder<LibraryBloc, LibraryState>(
      buildWhen: (previous, current) =>
          current.isProcessing != previous.isProcessing,
      builder: (context, state) {
        if (branches.isEmpty) {
          return Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  branchImage,
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
          child: ListView.builder(
            itemCount: branches.length,
            itemBuilder: (_, i) => BranchTile(
              coverURL: branches[i].coverURL.getOrNull(),
              language: branches[i].language.getOrNull(),
              onPressed: () {
                switch (type) {
                  case 'drafts':
                    handleAuthGuardedNavigation(
                      context,
                      navigateTo: TypewriterBranchUID(
                        branch: branches[i],
                        type: TypewriterType.branch,
                        uid: branches[i].uid.getOrCrash(),
                      ),
                    );
                    break;
                  default:
                    handleAuthGuardedNavigation(
                      context,
                      navigateTo: BranchRoute(
                        branch: branches[i],
                        uid: branches[i].uid.getOrCrash(),
                      ),
                    );
                    break;
                }
              },
              title: branches[i].title.getOrNull(),
              uid: branches[i].uid.getOrCrash(),
            ),
            padding: const EdgeInsets.symmetric(vertical: 20),
          ),
        );
      },
    );
  }
}
