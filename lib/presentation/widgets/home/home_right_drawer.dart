import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swipe_gesture_recognizer/swipe_gesture_recognizer.dart';
import 'package:wine/application/authentication/core/core_authentication_bloc.dart';

import 'package:wine/application/navigation/home/home_navigation_bloc.dart';
import 'package:wine/presentation/utils/home/home_navigation_methods.dart';
import 'package:wine/presentation/widgets/home/home_animated_icon_button.dart';
import 'package:wine/presentation/routes/router.gr.dart';
import 'package:wine/utils/assets.dart';

/// @nodoc
class HomeRightDrawer extends StatelessWidget {
  /// @nodoc
  const HomeRightDrawer({
    Key key,
    @required this.homeNavigationMethods,
  }) : super(key: key);

  /// @nodoc
  final HomeNavigationMethods homeNavigationMethods;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        brightness: Brightness.light,
        elevation: 0.0,
        leading: Container(),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: BlocBuilder<HomeNavigationBloc, HomeNavigationState>(
              builder: (context, homeNavigationState) {
                return HomeAnimatedIconButton(
                  animation: homeNavigationState.isRightDrawerOpen
                      ? 'menu_to_x'
                      : 'x_to_menu',
                  filename: Assets.menuAnimation,
                  height: 20.0,
                  onPressed: homeNavigationMethods.toggleDrawer,
                  width: 20.0,
                );
              },
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            SwipeGestureRecognizer(
              onSwipeRight: homeNavigationMethods.toggleDrawer,
              child: Container(
                color: Colors.transparent,
                width: mediaQuery.width,
                height: mediaQuery.height,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  BlocBuilder<CoreAuthenticationBloc, CoreAuthenticationState>(
                    builder: (context, coreAuthenticationState) {
                      if (!coreAuthenticationState.isAnonymous) {
                        return Container(
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(width: 3.0),
                            ),
                          ),
                          height: 30.0,
                          child: GestureDetector(
                            onTap: () async =>
                                ExtendedNavigator.root.push(Routes.accountPage),
                            child: const Text(
                              'MY ACCOUNT',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        );
                      }
                      return Container();
                    },
                  ),
                  const SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 50.0),
                    child: Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(width: 3.0),
                        ),
                      ),
                      height: 30.0,
                      child: GestureDetector(
                        onTap: () async =>
                            ExtendedNavigator.root.push(Routes.settingsPage),
                        child: const Text(
                          'SETTINGS',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
