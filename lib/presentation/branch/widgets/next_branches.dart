import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/branch/branch_bloc.dart';
import 'package:wine/domain/branch/branch.dart';
import 'package:wine/presentation/core/branch/branch_tile.dart';
import 'package:wine/utils/assets/images.dart';

/// @nodoc
class SameAuthorNextBranches extends StatelessWidget {
  /// @nodoc
  const SameAuthorNextBranches({
    Key? key,
    required this.branches,
    required this.title,
  }) : super(key: key);

  /// @nodoc
  final List<Branch> branches;

  /// @nodoc
  final String title;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BranchBloc, BranchState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            if (branches.isNotEmpty)
              for (final branch in branches)
                BranchTile(
                  coverURL: branch.coverURL.getOrNull(),
                  onPressed: () {},
                  title: branch.title.getOrNull(),
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
                      width: MediaQuery.of(context).size.width * .35,
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
          ],
        );
      },
    );
  }
}
