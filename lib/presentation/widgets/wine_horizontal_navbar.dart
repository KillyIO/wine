import 'package:flutter/material.dart';
import 'package:time/time.dart';

import 'package:wine/presentation/widgets/wine_horizontal_navbar_button.dart';

class WINEHorizontalNavbar extends StatelessWidget {
  final PageController pageController;
  final List<String> pageViewNavbarItems;
  final List<Color> pageViewNavbarColors;
  final int currentPageViewIdx;

  const WINEHorizontalNavbar({
    Key key,
    @required this.pageController,
    @required this.pageViewNavbarItems,
    @required this.pageViewNavbarColors,
    @required this.currentPageViewIdx,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: 100.milliseconds,
      height: 30.0,
      width: MediaQuery.of(context).size.width,
      color: pageViewNavbarColors[currentPageViewIdx],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        children: pageViewNavbarItems.asMap().entries.map((entry) {
          final int index = entry.key;
          final String value = entry.value;

          return WINEHorizontalNavbarButton(
            title: value,
            color: currentPageViewIdx == index ? Colors.black : Colors.black12,
            onPressed: () => pageController.animateToPage(
              index == 0 ? 1000 : 1001,
              duration: 200.milliseconds,
              curve: Curves.linear,
            ),
          );
        }).toList(),
      ),
    );
  }
}
