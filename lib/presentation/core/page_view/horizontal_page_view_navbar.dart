import 'package:flutter/material.dart';
import 'package:time/time.dart';
import 'package:wine/l10n/l10n.dart';
import 'package:wine/presentation/core/page_view/horizontal_page_view_navbar_button.dart';
import 'package:wine/utils/responsive/core_responsive.dart';

class HorizontalPageViewNavbar extends StatelessWidget {
  const HorizontalPageViewNavbar({
    required this.colors,
    required this.controller,
    required this.titles,
    required this.pageIndex,
    super.key,
  });

  final List<Color> colors;

  final PageController controller;

  final List<String> titles;

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
            title: context.getTranslation(value),
          );
        }).toList(),
      ),
    );
  }
}
