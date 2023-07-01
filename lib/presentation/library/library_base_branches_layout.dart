import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/library/library_bloc.dart';
import 'package:wine/domain/branch/branch.dart';
import 'package:wine/presentation/core/branch/branch_tile.dart';
import 'package:wine/presentation/routes/router.dart';
import 'package:wine/utils/constants/images.dart';

/// @nodoc
class LibraryBaseBranchesLayout extends StatelessWidget {
  /// @nodoc
  const LibraryBaseBranchesLayout({
    required this.branches,
    required this.type,
    super.key,
  });

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
                    context.router.push(
                      TypewriterBranchUIDRoute(
                        branch: branches[i],
                        uid: branches[i].uid.getOrCrash(),
                      ),
                    );
                  default:
                    context.router.push(
                      BranchRoute(
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
