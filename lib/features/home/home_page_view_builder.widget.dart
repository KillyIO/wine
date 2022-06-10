import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/features/home/home_bloc.application.dart';
import 'package:wine/features/home/home_trees.layout.dart';

/// @nodoc
class HomePageViewBuilder extends StatelessWidget {
  /// @nodoc
  const HomePageViewBuilder({
    Key? key,
    required this.controller,
  }) : super(key: key);

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
