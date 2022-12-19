import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/core/branch/branch_leaf_body.presentation.dart';
import 'package:wine/core/branch/branch_leaf_head.presentation.dart';
import 'package:wine/application/typewriter/branch/typewriter_branch_bloc.dart';

/// @nodoc
class TypewriterPreviewLayout extends StatelessWidget {
  /// @nodoc
  const TypewriterPreviewLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        BlocBuilder<TypewriterBranchBloc, TypewriterBranchState>(
          builder: (context, state) {
            return BranchLeafHead(
              coverURL: state.coverURL,
              title: state.title.getOrNull(),
              index: state.branch.index,
            );
          },
        ),
        Padding(
          padding:
              const EdgeInsets.only(bottom: 25, left: 20, right: 20, top: 75),
          child: BlocBuilder<TypewriterBranchBloc, TypewriterBranchState>(
            builder: (context, state) {
              return BranchLeafBody(
                leafController: state.leafController,
              );
            },
          ),
        )
      ],
    );
  }
}
