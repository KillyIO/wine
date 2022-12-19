import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/tree/tree_bloc.dart';
import 'package:wine/presentation/tree/widgets/tree_synopsis.dart';

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
