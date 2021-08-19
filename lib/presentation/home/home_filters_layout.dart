import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import 'package:wine/utils/constants/core.dart';
import 'package:wine/utils/responsive/drawer_responsive.dart';

/// @nodoc
class HomeFiltersLayout extends StatelessWidget {
  /// @nodoc
  const HomeFiltersLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return SizedBox(
      width: getDrawerWidth(mediaQuery),
      child: Drawer(
        key: const Key('home_filters_drawer'),
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(defaultAppBarHeight),
            child: AppBar(
              backgroundColor: Colors.transparent,
              brightness: Brightness.light,
              elevation: 0,
              leading: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Builder(
                  builder: (context) {
                    return IconButton(
                      highlightColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      icon: const Icon(
                        LineIcons.times,
                        color: Colors.black,
                      ),
                      onPressed: context.router.pop,
                      splashColor: Colors.transparent,
                    );
                  },
                ),
              ),
              leadingWidth: defaultToolbarItemWidth,
            ),
          ),
          body: SafeArea(
            child: Container(),
          ),
        ),
      ),
    );
  }
}
