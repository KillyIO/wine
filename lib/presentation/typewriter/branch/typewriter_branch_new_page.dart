import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/features/branch/branch.domain.dart';
import 'package:wine/features/tree/tree.domain.dart';
import 'package:wine/application/typewriter/branch/typewriter_branch_bloc.dart';
import 'package:wine/features/typewriter/typewriter_branch/typewriter_branch_layout.presentation.dart';
import 'package:wine/injection.dart';

/// @nodoc
class TypewriterBranchNewPage extends StatelessWidget {
  /// @nodoc
  const TypewriterBranchNewPage({
    super.key,
    this.previousBranch,
    required this.tree,
  });

  /// @nodoc
  final Branch? previousBranch;

  /// @nodoc
  final Tree? tree;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<TypewriterBranchBloc>()
        ..add(
          TypewriterBranchEvent.launchAsNewBranch(
            previousBranch: previousBranch,
            tree: tree,
          ),
        ),
      child: TypewriterBranchLayout(),
    );
  }
}
