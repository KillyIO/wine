import 'package:flutter/material.dart';

import 'package:wine/utils/constants/core.dart';
import 'package:wine/utils/responsive/home_responsive.dart';

/// @nodoc
class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  /// @nodoc
  const HomeAppBar({
    Key? key,
    this.preferredSize = const Size.fromHeight(defaultAppBarHeight),
  }) : super(key: key);

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return AppBar(
      backgroundColor: Colors.transparent,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: Container(color: Colors.black, height: 2),
      ),
      brightness: Brightness.light,
      elevation: 0,
      leading: Padding(
        padding: getDefaultAppBarButtonPadding(mediaQuery),
        child: IconButton(
          key: const Key('home_filter_button'),
          highlightColor: Colors.transparent,
          hoverColor: Colors.transparent,
          icon: const Icon(
            Icons.filter_list_outlined,
            color: Colors.black,
          ),
          onPressed: Scaffold.of(context).openDrawer,
          splashColor: Colors.transparent,
        ),
      ),
      leadingWidth: defaultToolbarItemWidth,
      actions: [
        Padding(
          padding: getDefaultAppBarButtonPadding(mediaQuery, isRight: true),
          child: IconButton(
            key: const Key('home_new_series_button'),
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
            icon: const Icon(
              Icons.add_outlined,
              color: Colors.black,
            ),
            // TODO add handleAuthGuardedNavigation to SeriesEditorPage
            onPressed: () {},
            splashColor: Colors.transparent,
          ),
        ),
        Padding(
          padding: getDefaultAppBarButtonPadding(mediaQuery, isRight: true),
          child: IconButton(
            key: const Key('home_menu_button'),
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
            icon: const Icon(
              Icons.menu_outlined,
              color: Colors.black,
            ),
            onPressed: Scaffold.of(context).openEndDrawer,
            splashColor: Colors.transparent,
          ),
        ),
      ],
    );
  }
}
