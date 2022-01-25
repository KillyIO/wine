import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/tree/tree_bloc.dart';
import 'package:wine/presentation/tree/widgets/tree_summary.dart';

/// @nodoc
class TreeSummaryLayout extends StatelessWidget {
  /// @nodoc
  const TreeSummaryLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: Text(
            'Summary',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        BlocBuilder<TreeBloc, TreeState>(
          builder: (context, state) {
            return TreeSummary(summary: state.tree.summary.getOrNull());
          },
        )
      ],
    );
  }
}
