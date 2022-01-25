import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/library/library_bloc.dart';
import 'package:wine/presentation/library/library_tree_layout.dart';

/// @nodoc
class LibraryPageViewBuilder extends StatelessWidget {
  /// @nodoc
  LibraryPageViewBuilder({
    Key? key,
    required this.pageController,
  }) : super(key: key);

  /// @nodoc
  final PageController pageController;

  // TODO(SSebigo): add real layouts
  final List<Widget> _pageViewLayouts = <Widget>[
    const LibraryTreeLayout(),
    Container()
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
