import 'package:flutter/material.dart';
import 'package:time/time.dart';
import 'package:wine/presentation/core/page_view/horizontal_page_view_navbar_button.dart';
import 'package:wine/utils/responsive/core_responsive.dart';

/// @nodoc
class HorizontalPageViewNavbar extends StatelessWidget {
  /// @nodoc
  const HorizontalPageViewNavbar({
    super.key,
    required this.colors,
    required this.controller,
    required this.titles,
    required this.pageIndex,
  });

  /// @nodoc
  final List<Color> colors;

  /// @nodoc
  final PageController controller;

  /// @nodoc
  final List<String> titles;

  /// @nodoc
  final int pageIndex;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return AnimatedContainer(
      duration: 100.milliseconds,
      height: getHorizontalPageViewNavbarHeight(mediaQuery),
      width: MediaQuery.of(context).size.width,
      color: colors[pageIndex],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: titles.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;

          return HorizontalPageViewNavbarButton(
            color: pageIndex == index ? Colors.black : Colors.black12,
            onPressed: () => controller.animateToPage(
              1002 + index,
              curve: Curves.linear,
              duration: 200.milliseconds,
            ),
            title: value,
          );
        }).toList(),
      ),
    );
  }
}
