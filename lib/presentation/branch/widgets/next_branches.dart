import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/branch/branch_bloc.dart';
import 'package:wine/domain/branch/branch.dart';
import 'package:wine/presentation/core/branch/branch_tile.dart';
import 'package:wine/presentation/core/buttons/default_button.dart';
import 'package:wine/presentation/routes/router.dart';
import 'package:wine/utils/constants/images.dart';
import 'package:wine/utils/constants/palette.dart';

/// @nodoc
class NextBranches extends StatelessWidget {
  /// @nodoc
  const NextBranches({
    required this.branches,
    required this.title,
    required this.onRefreshPressed,
    super.key,
  });

  /// @nodoc
  final List<Branch> branches;

  /// @nodoc
  final VoidCallback onRefreshPressed;

  /// @nodoc
  final String title;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return BlocBuilder<BranchBloc, BranchState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 25),
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            if (branches.isNotEmpty)
              for (final branch in branches)
                BranchTile(
                  coverURL: branch.coverURL.getOrCrash(),
                  language: branch.language.getOrCrash(),
                  onPressed: () => context.router.push(
                    BranchRoute(
                      branch: branch,
                      uid: branch.uid.getOrCrash(),
                    ),
                  ),
                  title: branch.title.getOrCrash(),
                  uid: branch.uid.getOrCrash(),
                )
            else
              Center(
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
              ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Center(
                child: DefaultButton(
                  color: pastelCyan,
                  fontSize: 15,
                  hasRoundedCorners: true,
                  height: 40,
                  onPressed: onRefreshPressed,
                  title: 'REFRESH',
                  width: mediaQuery.width * .25,
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
