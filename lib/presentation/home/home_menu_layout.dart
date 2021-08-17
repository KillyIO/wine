import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:line_icons/line_icons.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'package:wine/application/auth/auth_bloc.dart';
import 'package:wine/presentation/home/widgets/home_menu_tile.dart';
import 'package:wine/presentation/routes/router.dart';
import 'package:wine/utils/constants/core.dart';

/// @nodoc
class HomeMenuLayout extends StatelessWidget {
  /// @nodoc
  const HomeMenuLayout({Key? key}) : super(key: key);

  double _getBoxWidth(Size size) {
    final deviceType = getDeviceType(size);
    final refinedSize = getRefinedSize(size);

    switch (deviceType) {
      case DeviceScreenType.desktop:
        if (refinedSize == RefinedSize.small) {
          return size.width * .5;
        }
        return size.width * .25;
      case DeviceScreenType.tablet:
        return size.width * .75;
      default:
        if (refinedSize == RefinedSize.extraLarge) {
          return size.width * .75;
        }
        return size.width;
    }
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return SizedBox(
      width: _getBoxWidth(mediaQuery),
      child: Drawer(
        key: const Key('home_menu_drawer'),
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(defaultAppBarHeight),
            child: AppBar(
              backgroundColor: Colors.transparent,
              brightness: Brightness.light,
              elevation: 0,
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
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
              ],
            ),
          ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: Column(
                children: <Widget>[
                  Expanded(child: Container()),
                  BlocBuilder<AuthBloc, AuthState>(
                    builder: (context, state) {
                      return state.maybeMap(
                        authenticated: (_) => HomeMenuTile(
                          key: const Key('home_menu_library_tile'),
                          // TODO add route push LibraryPage
                          onPressed: () =>
                              context.router.root.push(const LibraryRoute()),
                          text: 'LIBRARY',
                        ),
                        orElse: () => Container(),
                      );
                    },
                  ),
                  const SizedBox(height: 25),
                  HomeMenuTile(
                    key: const Key('home_menu_plus_tile'),
                    onPressed: () =>
                        context.router.root.push(const PlusRoute()),
                    text: 'PLUS',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
