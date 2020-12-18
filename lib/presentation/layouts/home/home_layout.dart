import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swipe_gesture_recognizer/swipe_gesture_recognizer.dart';

import 'package:wine/application/database/home/home_database_bloc.dart';
import 'package:wine/application/navigation/home/home_navigation_bloc.dart';
import 'package:wine/presentation/utils/home/home_database_methods.dart';
import 'package:wine/presentation/utils/home/home_listeners.dart';
import 'package:wine/presentation/utils/home/home_navigation_methods.dart';
import 'package:wine/presentation/widgets/home/home_app_bar.dart';
import 'package:wine/presentation/widgets/home/home_collapsible.dart';
import 'package:wine/presentation/widgets/home/home_left_drawer.dart';
import 'package:wine/presentation/widgets/home/home_page_view_builder.dart';
import 'package:wine/presentation/widgets/home/home_right_drawer.dart';
import 'package:wine/presentation/widgets/wine_horizontal_navbar.dart';
import 'package:wine/presentation/widgets/wine_loading_screen.dart';
import 'package:wine/utils/getters.dart';
import 'package:wine/utils/palettes.dart';

/// @nodoc
class HomeLayout extends StatefulWidget {
  @override
  _HomeLayoutState createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout>
    with Getters, TickerProviderStateMixin {
  final HomeListeners _homeListeners = HomeListeners();
  final PageController _pageController = PageController(initialPage: 1000);

  HomeDatabaseMethods _homeDatabaseMethods;
  HomeNavigationMethods _homeNavigationMethods;

  @override
  void initState() {
    super.initState();
    _homeDatabaseMethods = HomeDatabaseMethods(context);
    _homeNavigationMethods = HomeNavigationMethods(context);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return WillPopScope(
      onWillPop: () async {
        final canPop = ExtendedNavigator.root.canPop();

        _homeNavigationMethods.willPop();

        return canPop;
      },
      child: MultiBlocListener(
        listeners: _homeListeners.listeners,
        child: BlocBuilder<HomeNavigationBloc, HomeNavigationState>(
          builder: (context, homeNavigationState) {
            return Stack(
              children: <Widget>[
                Scaffold(
                  backgroundColor: Colors.white,
                  appBar: HomeAppBar(
                    homeNavigationMethods: _homeNavigationMethods,
                  ),
                  body: Stack(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          WINEHorizontalNavbar(
                            pageController: _pageController,
                            pageViewNavbarItems: homeNavbarItemsKeys,
                            currentPageViewIdx:
                                homeNavigationState.currentPageViewIdx,
                            pageViewNavbarColors: const <Color>[
                              Palettes.pastelYellow,
                              Palettes.pastelPink
                            ],
                          ),
                          HomePageViewBuilder(
                            homeDatabaseMethods: _homeDatabaseMethods,
                            homeNavigationMethods: _homeNavigationMethods,
                            pageController: _pageController,
                          ),
                        ],
                      ),
                      SwipeGestureRecognizer(
                        onSwipeLeft: () =>
                            _homeNavigationMethods.toggleDrawer(),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            color: Colors.transparent,
                            width: 20,
                            height: mediaQuery.height,
                          ),
                        ),
                      ),
                      SwipeGestureRecognizer(
                        onSwipeRight: () =>
                            _homeNavigationMethods.toggleDrawer(isRight: false),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            color: Colors.transparent,
                            width: 20,
                            height: mediaQuery.height,
                          ),
                        ),
                      ),
                      BlocBuilder<HomeDatabaseBloc, HomeDatabaseState>(
                        builder: (context, homeDatabaseState) {
                          return WINELoadingScreen(
                            vsync: this,
                            isLoading: homeDatabaseState.isLoading,
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: HomeCollapsible(
                    collapse: !homeNavigationState.isRightDrawerOpen,
                    child: HomeRightDrawer(
                      homeNavigationMethods: _homeNavigationMethods,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: HomeCollapsible(
                    collapse: !homeNavigationState.isLeftDrawerOpen,
                    child: HomeLeftDrawer(
                      homeDatabaseMethods: _homeDatabaseMethods,
                      homeNavigationMethods: _homeNavigationMethods,
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
