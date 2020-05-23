import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swipe_gesture_recognizer/swipe_gesture_recognizer.dart';
import 'package:time/time.dart';
import 'package:wine/application/database/home/home_database_bloc.dart';
import 'package:wine/application/navigation/home/home_navigation_bloc.dart';
import 'package:wine/presentation/pages/home/widgets/home_app_bar.dart';
import 'package:wine/presentation/pages/home/widgets/new_series_layout.dart';
import 'package:wine/presentation/pages/home/widgets/top_series_layout.dart';
import 'package:wine/presentation/widgets/wine_horizontal_navbar_button.dart';
import 'package:wine/routes.dart';
import 'package:wine/utils/arguments.dart';
import 'package:wine/utils/constants.dart';
import 'package:wine/utils/palettes.dart';

class HomeLayout extends StatefulWidget {
  @override
  _HomeLayoutState createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> with TickerProviderStateMixin {
  final PageController _pageController = PageController(initialPage: 1000);

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  final List<Color> pageViewNavbarColors = <Color>[
    Palettes.pastelYellow,
    Palettes.pastelPink,
  ];

  final List<Widget> pageViewLayouts = <Widget>[
    TopSeriesLayout(),
    NewSeriesLayout(),
  ];

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.of(context).size;

    return MultiBlocListener(
      listeners: [
        BlocListener<HomeNavigationBloc, HomeNavigationState>(
          listener: (context, state) {
            if (state.isNewSeriesPageOpen) {
              sailor.navigate(
                Constants.newSeriesRoute,
                args: NewSeriesPageArgs(),
              );
            }
          },
        ),
      ],
      child: BlocBuilder<HomeNavigationBloc, HomeNavigationState>(
        builder: (context, homeNavState) {
          return BlocBuilder<HomeDatabaseBloc, HomeDatabaseState>(
            builder: (context, homeDbState) {
              return Scaffold(
                backgroundColor: Colors.white,
                appBar: HomeAppBar(
                  isDrawerOpen: homeNavState.isDrawerOpen,
                  isNewSeriesPageOpen: homeNavState.isNewSeriesPageOpen,
                ),
                body: Stack(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        AnimatedContainer(
                          duration: 100.milliseconds,
                          height: 30.0,
                          width: MediaQuery.of(context).size.width,
                          color: pageViewNavbarColors[
                              homeNavState.currentPageViewIdx],
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            mainAxisSize: MainAxisSize.max,
                            children: homeNavState.pageViewNavbarItems
                                .asMap()
                                .entries
                                .map((entry) {
                              final int index = entry.key;
                              final String value = entry.value;

                              return WINEHorizontalNavbarButton(
                                title: value,
                                color: homeNavState.currentPageViewIdx == index
                                    ? Colors.black
                                    : Colors.black12,
                                onPressed: () => _pageController.animateToPage(
                                  index == 0 ? 1000 : 1001,
                                  duration: 200.milliseconds,
                                  curve: Curves.linear,
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                        Expanded(
                          child: PageView.builder(
                            controller: _pageController,
                            itemBuilder: (BuildContext context, int index) =>
                                pageViewLayouts[index % pageViewLayouts.length],
                            onPageChanged: (int index) => context
                                .bloc<HomeNavigationBloc>()
                                .add(HomeNavigationEvent.pageViewIndexChanged(
                                  index: index % pageViewLayouts.length,
                                )),
                          ),
                        ),
                      ],
                    ),
                    SwipeGestureRecognizer(
                      onSwipeLeft: () {
                        context
                            .bloc<HomeNavigationBloc>()
                            .add(HomeNavigationEvent.drawerIconPressed(
                              isDrawerOpen: homeNavState.isDrawerOpen,
                            ));
                        sailor(Constants.homeDrawerRoute);
                      },
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          color: Colors.transparent,
                          width: 20,
                          height: mediaQuery.height,
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
