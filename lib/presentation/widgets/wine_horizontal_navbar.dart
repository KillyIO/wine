import 'package:flutter/material.dart';
import 'package:time/time.dart';

import 'package:wine/presentation/widgets/wine_horizontal_navbar_button.dart';

/// @nodoc
class WINEHorizontalNavbar extends StatelessWidget {
  /// @nodoc
  const WINEHorizontalNavbar({
    Key key,
    @required this.pageController,
    @required this.pageViewNavbarItems,
    @required this.pageViewNavbarColors,
    @required this.currentPageViewIdx,
  }) : super(key: key);

  /// @nodoc
  final PageController pageController;

  /// @nodoc
  final List<String> pageViewNavbarItems;

  /// @nodoc
  final List<Color> pageViewNavbarColors;

  /// @nodoc
  final int currentPageViewIdx;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: 100.milliseconds,
      height: 30.0,
      width: MediaQuery.of(context).size.width,
      color: pageViewNavbarColors[currentPageViewIdx],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: pageViewNavbarItems.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;

          return WINEHorizontalNavbarButton(
            title: value,
            color: currentPageViewIdx == index ? Colors.black : Colors.black12,
            onPressed: () => pageController.animateToPage(
              1002 + index,
              duration: 200.milliseconds,
              curve: Curves.linear,
            ),
          );
        }).toList(),
      ),
    );
  }
}
