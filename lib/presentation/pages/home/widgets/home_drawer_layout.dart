import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swipe_gesture_recognizer/swipe_gesture_recognizer.dart';
import 'package:wine/application/authentication/core/core_authentication_bloc.dart';
import 'package:wine/application/navigation/home/home_navigation_bloc.dart';
import 'package:wine/presentation/pages/home/utils/home_navigation_methods.dart';
import 'package:wine/presentation/pages/home/widgets/home_animated_icon_button.dart';
import 'package:wine/routes.dart';
import 'package:wine/utils/constants.dart';

class HomeDrawerLayout extends StatefulWidget {
  @override
  _HomeDrawerLayoutState createState() => _HomeDrawerLayoutState();
}

class _HomeDrawerLayoutState extends State<HomeDrawerLayout> {
  HomeNavigationMethods _homeNavState;

  @override
  void initState() {
    super.initState();
    _homeNavState = HomeNavigationMethods(context);
  }

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.of(context).size;

    return BlocBuilder<CoreAuthenticationBloc, CoreAuthenticationState>(
      builder: (context, coreState) {
        return BlocBuilder<HomeNavigationBloc, HomeNavigationState>(
          builder: (context, homeNavState) {
            return WillPopScope(
              onWillPop: () async {
                final bool canPop = Navigator.of(context).canPop();

                if (canPop) {
                  _homeNavState.closeDrawer();
                }
                return canPop;
              },
              child: Scaffold(
                backgroundColor: Colors.white,
                appBar: AppBar(
                  backgroundColor: Colors.transparent,
                  brightness: Brightness.light,
                  elevation: 0.0,
                  leading: Container(),
                  actions: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: HomeAnimatedIconButton(
                        animation: homeNavState.isDrawerOpen ? 'menu_to_x' : 'x_to_menu',
                        filename: 'assets/animation/menu.flr',
                        height: 20.0,
                        onPressed: () => _homeNavState.closeDrawer(pop: true),
                        width: 20.0,
                      ),
                    ),
                  ],
                ),
                body: SafeArea(
                  child: Stack(
                    children: <Widget>[
                      SwipeGestureRecognizer(
                        onSwipeRight: () => _homeNavState.closeDrawer(pop: true),
                        child: Container(color: Colors.transparent, width: mediaQuery.width, height: mediaQuery.height),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            if (coreState.isAnonymous)
                              Container()
                            else
                              Container(
                                decoration: const BoxDecoration(border: Border(bottom: BorderSide(width: 3.0))),
                                height: 30.0,
                                child: GestureDetector(
                                  onTap: () => sailor(Constants.accountRoute),
                                  child: Text(
                                    'MY ACCOUNT',
                                    style: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.w300),
                                  ),
                                ),
                              ),
                            const SizedBox(height: 25),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 50.0),
                              child: Container(
                                decoration: const BoxDecoration(border: Border(bottom: BorderSide(width: 3.0))),
                                height: 30.0,
                                child: GestureDetector(
                                  onTap: () => sailor(Constants.settingsRoute),
                                  child: Text(
                                    'SETTINGS',
                                    style: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.w300),
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
              ),
            );
          },
        );
      },
    );
  }
}
