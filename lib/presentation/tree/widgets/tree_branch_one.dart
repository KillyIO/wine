import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/tree/tree_bloc.dart';
import 'package:wine/presentation/core/branch/branch_tile.dart';
import 'package:wine/presentation/core/buttons/default_button.dart';
import 'package:wine/presentation/routes/router.dart';
import 'package:wine/utils/constants/palette.dart';

class TreeBranchOne extends StatelessWidget {
  const TreeBranchOne({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: Text(
            'BRANCH ONE',
            style: TextStyle(
              color: pastelPink,
              fontSize: 16,
              fontWeight: FontWeight.w800,
              letterSpacing: 1,
            ),
          ),
        ),
        BlocBuilder<TreeBloc, TreeState>(
          builder: (context, state) {
            if (state.branchOne != null) {
              return BranchTile(
                title: state.branchOne!.title.getOrCrash(),
                language: state.branchOne!.language.getOrCrash(),
                coverURL: state.branchOne!.coverURL.getOrCrash(),
                onPressed: () => context.router.push(
                  BranchRoute(
                    branch: state.branchOne,
                    uid: state.branchOne!.uid.getOrCrash(),
                  ),
                ),
                uid: state.branchOne!.uid.getOrCrash(),
              );
            }
            if (state.authorIsUser) {
              return DefaultButton(
                color: pastelPink,
                hasRoundedCorners: true,
                onPressed: () => context.router
                    .push(TypewriterBranchNewRoute(tree: state.tree)),
                title: 'WRITE FIRST BRANCH',
                width: mediaQuery.width,
              );
            }
            return const Text(
              'Branch 1 yet to be published',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                letterSpacing: .5,
              ),
            );
          },
        ),
      ],
    );
  }
}
