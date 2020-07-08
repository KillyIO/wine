import 'package:flutter/material.dart';

import 'package:wine/presentation/pages/home/utils/home_navigation_methods.dart';
import 'package:wine/presentation/pages/home/widgets/home_new_series_layout.dart';
import 'package:wine/presentation/pages/home/widgets/home_top_series_layout.dart';

class HomePageViewBuilder extends StatelessWidget {
  final PageController pageController;
  final HomeNavigationMethods homeNavMethods;

  HomePageViewBuilder({
    Key key,
    @required this.pageController,
    @required this.homeNavMethods,
  }) : super(key: key);

  final List<Widget> _pageViewLayouts = <Widget>[HomeTopSeriesLayout(), HomeNewSeriesLayout()];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        controller: pageController,
        itemBuilder: (BuildContext context, int index) => _pageViewLayouts[index % _pageViewLayouts.length],
        onPageChanged: (int index) => homeNavMethods.pageViewIndexChanged(index % _pageViewLayouts.length),
      ),
    );
  }
}
