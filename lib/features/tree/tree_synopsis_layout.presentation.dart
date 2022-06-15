import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/features/tree/tree_bloc.application.dart';
import 'package:wine/features/tree/tree_synopsis.presentation.dart';

/// @nodoc
class TreeSynopsisLayout extends StatelessWidget {
  /// @nodoc
  const TreeSynopsisLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: Text(
            'Synopsis',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        BlocBuilder<TreeBloc, TreeState>(
          builder: (context, state) {
            return TreeSynopsis(synopsis: state.tree.synopsis.getOrNull());
          },
        )
      ],
    );
  }
}
