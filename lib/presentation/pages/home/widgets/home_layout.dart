import 'package:after_layout/after_layout.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swipe_gesture_recognizer/swipe_gesture_recognizer.dart';
import 'package:wine/application/database/home/home_database_bloc.dart';
import 'package:wine/application/navigation/home/home_navigation_bloc.dart';
import 'package:wine/presentation/pages/home/utils/home_listeners.dart';
import 'package:wine/presentation/pages/home/utils/home_database_methods.dart';
import 'package:wine/presentation/pages/home/utils/home_navigation_methods.dart';
import 'package:wine/presentation/pages/home/widgets/home_app_bar.dart';
import 'package:wine/presentation/pages/home/widgets/home_collapsible.dart';
import 'package:wine/presentation/pages/home/widgets/home_left_drawer.dart';
import 'package:wine/presentation/pages/home/widgets/home_right_drawer.dart';
import 'package:wine/presentation/pages/home/widgets/home_page_view_builder.dart';
import 'package:wine/presentation/widgets/wine_horizontal_navbar.dart';
import 'package:wine/utils/palettes.dart';

class HomeLayout extends StatefulWidget {
  @override
  _HomeLayoutState createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> with AfterLayoutMixin {
  final HomeListeners _homeListeners = HomeListeners();
  final PageController _pageController = PageController(initialPage: 1000);

  HomeDatabaseMethods _homeDbMethods;
  HomeNavigationMethods _homeNavMethods;

  @override
  void initState() {
    super.initState();
    _homeDbMethods = HomeDatabaseMethods(context);
    _homeNavMethods = HomeNavigationMethods(context);
  }

  @override
  void afterFirstLayout(BuildContext context) {
    context.bloc<HomeDatabaseBloc>().add(HomeDatabaseEvent.homePageLaunchedEVT(context: context));
    context.bloc<HomeNavigationBloc>().add(HomeNavigationEvent.homePageLaunchedEVT(context: context));
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.of(context).size;

    return MultiBlocListener(
      listeners: _homeListeners.listeners,
      child: BlocBuilder<HomeDatabaseBloc, HomeDatabaseState>(
        builder: (context, homeDbState) {
          return BlocBuilder<HomeNavigationBloc, HomeNavigationState>(
            builder: (context, homeNavState) {
              return WillPopScope(
                onWillPop: () async {
                  final bool canPop = ExtendedNavigator.root.canPop();

                  if (homeNavState.isLeftDrawerOpen) {
                    _homeNavMethods.closeDrawer(isRight: false);
                  }
                  if (homeNavState.isRightDrawerOpen) {
                    _homeNavMethods.closeDrawer();
                  }

                  return canPop;
                },
                child: Stack(
                  children: <Widget>[
                    Scaffold(
                      backgroundColor: Colors.white,
                      appBar: HomeAppBar(homeNavMethods: _homeNavMethods, isDrawerOpen: homeNavState.isRightDrawerOpen),
                      body: Stack(
                        children: <Widget>[
                          if (!homeDbState.isLoading)
                            Column(
                              children: <Widget>[
                                WINEHorizontalNavbar(
                                  pageController: _pageController,
                                  pageViewNavbarItems: homeNavState.pageViewNavbarItems,
                                  currentPageViewIdx: homeNavState.currentPageViewIdx,
                                  pageViewNavbarColors: <Color>[Palettes.pastelYellow, Palettes.pastelPink],
                                ),
                                HomePageViewBuilder(pageController: _pageController, homeNavMethods: _homeNavMethods),
                              ],
                            ),
                          if (!homeDbState.isLoading)
                            SwipeGestureRecognizer(
                              onSwipeLeft: () => _homeNavMethods.openDrawer(),
                              child: Align(
                                alignment: Alignment.topRight,
                                child: Container(color: Colors.transparent, width: 20, height: mediaQuery.height),
                              ),
                            ),
                          if (!homeDbState.isLoading)
                            SwipeGestureRecognizer(
                              onSwipeRight: () => _homeNavMethods.openDrawer(isRight: false),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Container(color: Colors.transparent, width: 20, height: mediaQuery.height),
                              ),
                            ),
                          if (homeDbState.isLoading)
                            const Center(
                              child: CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(Colors.black)),
                            ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: HomeCollapsible(
                        collapse: !homeNavState.isRightDrawerOpen,
                        child: HomeRightDrawer(homeNavMethods: _homeNavMethods, homeNavState: homeNavState),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: HomeCollapsible(
                        collapse: !homeNavState.isLeftDrawerOpen,
                        child: HomeLeftDrawer(
                          homeDbMethods: _homeDbMethods,
                          homeDbState: homeDbState,
                          homeNavMethods: _homeNavMethods,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
