import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/typewriter/branch/typewriter_branch_bloc.dart';
import 'package:wine/presentation/typewriter/branch/typewriter_edition_layout.dart';
import 'package:wine/presentation/typewriter/branch/typewriter_preview_layout.dart';

/// @nodoc
class TypewriterPageViewBuilder extends StatelessWidget {
  /// @nodoc
  TypewriterPageViewBuilder({
    required this.pageController,
    super.key,
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
