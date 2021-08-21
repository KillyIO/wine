import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:wine/utils/constants/core.dart';
import 'package:wine/utils/responsive/drawer_responsive.dart';
import 'package:wine/utils/responsive/home_responsive.dart';

/// @nodoc
class HomeFiltersMenuLayout extends StatelessWidget {
  /// @nodoc
  const HomeFiltersMenuLayout({Key? key}) : super(key: key);

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
                padding: getDefaultAppBarButtonPadding(mediaQuery),
                child: IconButton(
                  key: const Key('filter_menu_back_button'),
                  highlightColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  icon: const Icon(
                    Icons.close_outlined,
                    color: Colors.black,
                  ),
                  onPressed: context.router.pop,
                  splashColor: Colors.transparent,
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
