import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/home/home_navigation/home_navigation_bloc.dart';

/// @nodoc
class HomePageViewBuilder extends StatelessWidget {
  /// @nodoc
  HomePageViewBuilder({
    Key? key,
    required this.controller,
  }) : super(key: key);

  /// @nodoc
  final PageController controller;

  final List<Widget> _pageViewLayouts = <Widget>[Container(), Container()];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        controller: controller,
        itemBuilder: (context, index) =>
            _pageViewLayouts[index % _pageViewLayouts.length],
        onPageChanged: (index) {
          context.read<HomeNavigationBloc>().add(
                HomeNavigationEvent.pageViewIndexChanged(
                  index % _pageViewLayouts.length,
                ),
              );
        },
      ),
    );
  }
}
