import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/library/library_bloc.dart';
import 'package:wine/presentation/library/library_branches_layout.dart';
import 'package:wine/presentation/library/library_trees_layout.dart';

class LibraryPageViewBuilder extends StatelessWidget {
  LibraryPageViewBuilder({
    required this.pageController,
    super.key,
  });

  final PageController pageController;

  final List<Widget> _pageViewLayouts = <Widget>[
    const LibraryTreesLayout(),
    const LibraryBranchesLayout(),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<LibraryBloc, LibraryState>(
        builder: (context, state) {
          return PageView.builder(
            controller: pageController,
            itemBuilder: (context, index) =>
                _pageViewLayouts[index % _pageViewLayouts.length],
            onPageChanged: (index) => context.read<LibraryBloc>().add(
                  LibraryEvent.pageViewIndexChanged(
                    index % _pageViewLayouts.length,
                  ),
                ),
          );
        },
      ),
    );
  }
}
