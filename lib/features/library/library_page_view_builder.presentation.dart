import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/features/library/library_bloc.application.dart';
import 'package:wine/features/library/library_branches_layout.presentation.dart';
import 'package:wine/features/library/library_trees_layout.presentation.dart';

/// @nodoc
class LibraryPageViewBuilder extends StatelessWidget {
  /// @nodoc
  LibraryPageViewBuilder({
    super.key,
    required this.pageController,
  });

  /// @nodoc
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
