import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/features/typewriter/typewriter_branch/typewriter_branch_bloc.application.dart';
import 'package:wine/features/typewriter/typewriter_branch/typewriter_edition_layout.presentation.dart';
import 'package:wine/features/typewriter/typewriter_branch/typewriter_preview_layout.presentation.dart';

/// @nodoc
class TypewriterPageViewBuilder extends StatelessWidget {
  /// @nodoc
  TypewriterPageViewBuilder({
    super.key,
    required this.pageController,
  });

  /// @nodoc
  final PageController pageController;

  final List<Widget> _pageViewLayouts = <Widget>[
    const TypewriterEditionLayout(),
    const TypewriterPreviewLayout(),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        controller: pageController,
        itemBuilder: (context, index) =>
            _pageViewLayouts[index % _pageViewLayouts.length],
        onPageChanged: (index) => context.read<TypewriterBranchBloc>().add(
              TypewriterBranchEvent.pageViewIndexChanged(
                index % _pageViewLayouts.length,
              ),
            ),
      ),
    );
  }
}
