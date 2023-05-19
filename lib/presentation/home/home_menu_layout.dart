import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:wine/presentation/home/widgets/home_menu_tile.dart';
import 'package:wine/presentation/routes/router.dart';
import 'package:wine/utils/constants/core.dart';
import 'package:wine/utils/responsive/drawer_responsive.dart';
import 'package:wine/utils/responsive/home_responsive.dart';

/// @nodoc
class HomeMenuLayout extends StatelessWidget {
  /// @nodoc
  const HomeMenuLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return SizedBox(
      width: getDrawerWidth(mediaQuery),
      child: Drawer(
        key: const Key('home_menu_drawer'),
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(defaultAppBarHeight),
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              actions: [
                Padding(
                  padding:
                      getDefaultAppBarButtonPadding(mediaQuery, isRight: true),
                  child: IconButton(
                    key: const Key('home_menu_close_button'),
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
              ],
            ),
          ),
          body: SafeArea(
            child: Align(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: Column(
                  children: <Widget>[
                    if (isMenuContentBottom(mediaQuery))
                      Expanded(child: Container())
                    else
                      const SizedBox(height: 100),
                    HomeMenuTile(
                      key: const Key('home_menu_library_tile'),
                      onPressed: () =>
                          context.router.push(const LibraryRoute()),
                      text: 'LIBRARY',
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: HomeMenuTile(
                        key: const Key('home_menu_plus_tile'),
                        onPressed: () => context.router.push(const PlusRoute()),
                        text: 'PLUS',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
