import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/home/home_bloc.dart';
import 'package:wine/presentation/home/home_trees_layout.dart';

/// @nodoc
class HomePageViewBuilder extends StatelessWidget {
  /// @nodoc
  const HomePageViewBuilder({
    super.key,
    required this.controller,
  });

  /// @nodoc
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return PageView.builder(
            controller: controller,
            itemBuilder: (_, i) => [
              HomeTreesLayout(
                timeKey: state.timeFilterKey,
                trees: state.topTrees,
              ),
              HomeTreesLayout(
                timeKey: state.timeFilterKey,
                trees: state.newTrees,
              ),
            ][i % 2],
            onPageChanged: (i) => context
                .read<HomeBloc>()
                .add(HomeEvent.pageViewIndexChanged(i % 2)),
          );
        },
      ),
    );
  }
}
