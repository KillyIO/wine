import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/tree/tree_bloc.dart';
import 'package:wine/presentation/tree/widgets/tree_author_username.dart';
import 'package:wine/presentation/tree/widgets/tree_cover.dart';
import 'package:wine/presentation/tree/widgets/tree_title.dart';

class TreeDetails extends StatelessWidget {
  const TreeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: BlocBuilder<TreeBloc, TreeState>(
              builder: (context, state) {
                return TreeCover(
                  coverURL: state.tree.coverURL.getOrNull(),
                  treeUID: state.tree.uid.getOrCrash(),
                );
              },
            ),
          ),
        ),
        Expanded(
          child: SizedBox(
            height: 125,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    BlocBuilder<TreeBloc, TreeState>(
                      builder: (context, state) {
                        return TreeTitle(
                          title: state.tree.title.getOrNull(),
                        );
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.5),
                      child: BlocBuilder<TreeBloc, TreeState>(
                        builder: (context, state) {
                          return TreeAuthorUsername(
                            authorUsername:
                                state.author?.username.getOrNull() ??
                                    state.session?.username.getOrNull(),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
