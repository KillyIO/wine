import 'package:flutter/material.dart';
import 'package:wine/presentation/utils/home/home_database_methods.dart';

import 'package:wine/presentation/utils/home/home_navigation_methods.dart';
import 'package:wine/presentation/layouts/home/home_new_series_layout.dart';
import 'package:wine/presentation/layouts/home/home_top_series_layout.dart';

/// @nodoc
class HomePageViewBuilder extends StatelessWidget {
  /// @nodoc
  HomePageViewBuilder({
    Key key,
    @required this.pageController,
    @required this.homeDatabaseMethods,
    @required this.homeNavigationMethods,
  }) : super(key: key);

  /// @nodoc
  final HomeDatabaseMethods homeDatabaseMethods;

  /// @nodoc
  final HomeNavigationMethods homeNavigationMethods;

  /// @nodoc
  final PageController pageController;

  final List<Widget> _pageViewLayouts = <Widget>[
    HomeTopSeriesLayout(),
    HomeNewSeriesLayout(),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        controller: pageController,
        itemBuilder: (BuildContext context, int index) =>
            _pageViewLayouts[index % _pageViewLayouts.length],
        onPageChanged: (int index) {
          homeDatabaseMethods
              .pageViewIndexChanged(index % _pageViewLayouts.length);
          homeNavigationMethods
              .pageViewIndexChanged(index % _pageViewLayouts.length);
        },
      ),
    );
  }
}
