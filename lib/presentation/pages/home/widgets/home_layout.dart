import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swipe_gesture_recognizer/swipe_gesture_recognizer.dart';
import 'package:wine/application/database/home/home_database_bloc.dart';
import 'package:wine/application/navigation/home/home_navigation_bloc.dart';
import 'package:wine/presentation/pages/home/utils/home_listeners.dart';
import 'package:wine/presentation/pages/home/utils/home_navigation_methods.dart';
import 'package:wine/presentation/pages/home/widgets/home_app_bar.dart';
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

  HomeNavigationMethods _homeNavState;

  @override
  void initState() {
    super.initState();
    _homeNavState = HomeNavigationMethods(context);
  }

  @override
  void afterFirstLayout(BuildContext context) {
    context.bloc<HomeDatabaseBloc>().add(const HomeDatabaseEvent.homePageLaunchedEVT());
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
      child: BlocBuilder<HomeNavigationBloc, HomeNavigationState>(
        builder: (context, homeNavState) {
          return BlocBuilder<HomeDatabaseBloc, HomeDatabaseState>(
            builder: (context, homeDbState) {
              return Scaffold(
                backgroundColor: Colors.white,
                appBar: HomeAppBar(
                  homeNavState: _homeNavState,
                  isDrawerOpen: homeNavState.isDrawerOpen,
                  isNewSeriesPageOpen: homeNavState.isNewSeriesPageOpen,
                ),
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
                          HomePageViewBuilder(pageController: _pageController, homeNavState: _homeNavState),
                        ],
                      ),
                    if (!homeDbState.isLoading)
                      SwipeGestureRecognizer(
                        onSwipeLeft: () => _homeNavState.openDrawer(),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Container(color: Colors.transparent, width: 20, height: mediaQuery.height),
                        ),
                      ),
                    if (homeDbState.isLoading)
                      const Center(
                        child: CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(Colors.black)),
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
