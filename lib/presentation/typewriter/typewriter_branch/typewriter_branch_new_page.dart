import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/typewriter/typewriter_branch/typewriter_branch_bloc.dart';
import 'package:wine/domain/branch/branch.dart';
import 'package:wine/domain/tree/tree.dart';
import 'package:wine/injection.dart';
import 'package:wine/presentation/typewriter/typewriter_branch/typewriter_branch_layout.presentation.dart';

/// @nodoc
class TypewriterBranchNewPage extends StatelessWidget {
  /// @nodoc
  const TypewriterBranchNewPage({
    Key? key,
    this.previousBranch,
    required this.tree,
  }) : super(key: key);

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
