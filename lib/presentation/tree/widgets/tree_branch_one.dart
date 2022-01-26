import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/tree/tree_bloc.dart';
import 'package:wine/domain/core/typewriter_type.dart';
import 'package:wine/presentation/core/branch/branch_tile.dart';
import 'package:wine/presentation/core/buttons/default_button.dart';
import 'package:wine/presentation/routes/router.dart';
import 'package:wine/utils/constants/palette.dart';
import 'package:wine/utils/functions/navigation_functions.dart';

/// @nodoc
class TreeBranchOne extends StatelessWidget {
  /// @nodoc
  const TreeBranchOne({Key? key}) : super(key: key);

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
                coverURL: state.branchOne!.coverURL.getOrCrash(),
                onPressed: () {},
              );
            }
            if (state.authorIsUser) {
              return DefaultButton(
                color: pastelPink,
                hasRoundedCorners: true,
                onPressed: () => handleAuthGuardedNavigation(
                  context,
                  navigateTo: TypewriterBranchNew(
                    tree: state.tree,
                    type: TypewriterType.branch,
                  ),
                ),
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
