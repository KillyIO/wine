import 'package:flutter/material.dart';

import 'package:wine/presentation/pages/account/utils/account_navigation_methods.dart';
import 'package:wine/presentation/widgets/wine_vertical_navbar_button.dart';

class AccountVerticalNavbar extends StatelessWidget {
  final AccountNavigationMethods acNavMethods;
  final List<String> items;
  final int currentIndex;
  final double width;

  const AccountVerticalNavbar({
    Key key,
    @required this.acNavMethods,
    @required this.items,
    @required this.currentIndex,
    @required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Column(
        children: items.asMap().entries.map((entry) {
          final int index = entry.key;
          final String value = entry.value;

          return Padding(
            padding: EdgeInsets.only(
              top: index == 0 ? 20.0 : 0.0,
              bottom: 20.0,
            ),
            child: WINEVerticalNavbarButton(
              title: value,
              onPressed: () => acNavMethods.verticalNavbarIndexChanged(index),
              color: currentIndex == index ? Colors.black : Colors.black12,
              width: width,
            ),
          );
        }).toList(),
      ),
    );
  }
}
