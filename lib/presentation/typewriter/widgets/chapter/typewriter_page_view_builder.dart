import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/typewriter/typewriter_chapter/typewriter_chapter_bloc.dart';
import 'package:wine/presentation/typewriter/typewriter_chapter/typewriter_edition_layout.dart';
import 'package:wine/presentation/typewriter/typewriter_chapter/typewriter_preview_layout.dart';

/// @nodoc
class TypewriterPageViewBuilder extends StatelessWidget {
  /// @nodoc
  TypewriterPageViewBuilder({
    Key? key,
    required this.pageController,
  }) : super(key: key);

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
        onPageChanged: (index) => context.read<TypewriterChapterBloc>().add(
              TypewriterChapterEvent.pageViewIndexChanged(
                index % _pageViewLayouts.length,
              ),
            ),
      ),
    );
  }
}
