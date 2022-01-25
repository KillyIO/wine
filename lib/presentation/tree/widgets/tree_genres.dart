import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/tree/tree_bloc.dart';
import 'package:wine/presentation/core/misc/genre_container.dart';

/// @nodoc
class TreeGenres extends StatelessWidget {
  /// @nodoc
  const TreeGenres({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TreeBloc, TreeState>(
      builder: (context, state) {
        return SingleChildScrollView(
          child: Row(
            children: [
              for (int i = 0; i < state.tree.genres.length; i++)
                Padding(
                  padding: EdgeInsets.only(
                    right: i == state.tree.genres.length ? 0 : 10,
                  ),
                  child: GenreContainer(
                    title:
                        state.tree.genres.map((e) => e.getOrNull()).toList()[i],
                  ),
                )
            ],
          ),
        );
      },
    );
  }
}
