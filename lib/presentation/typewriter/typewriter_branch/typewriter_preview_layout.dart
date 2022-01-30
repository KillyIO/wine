import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/typewriter/typewriter_branch/typewriter_branch_bloc.dart';
import 'package:wine/presentation/core/branch/branch_index.dart';
import 'package:wine/presentation/core/branch/branch_leaf.dart';
import 'package:wine/presentation/core/branch/branch_title.dart';

/// @nodoc
class TypewriterPreviewLayout extends StatelessWidget {
  /// @nodoc
  const TypewriterPreviewLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10, top: 50),
            child: BlocBuilder<TypewriterBranchBloc, TypewriterBranchState>(
              builder: (context, state) {
                return BranchIndex(index: state.branch.index);
              },
            ),
          ),
          BlocBuilder<TypewriterBranchBloc, TypewriterBranchState>(
            builder: (context, state) {
              return BranchTitle(title: state.branch.title.getOrNull());
            },
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 25, top: 75),
            child: BlocBuilder<TypewriterBranchBloc, TypewriterBranchState>(
              builder: (context, state) {
                return BranchLeaf(leafController: state.leafController);
              },
            ),
          )
        ],
      ),
    );
  }
}
