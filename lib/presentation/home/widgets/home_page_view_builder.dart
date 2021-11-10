import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/home/home_bloc.dart';

/// @nodoc
class HomePageViewBuilder extends StatelessWidget {
  /// @nodoc
  HomePageViewBuilder({
    Key? key,
    required this.controller,
  }) : super(key: key);

  /// @nodoc
  final PageController controller;

  // ignore: todo
  // TODO add real layouts
  final List<Widget> _pageViewLayouts = <Widget>[Container(), Container()];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        controller: controller,
        itemBuilder: (context, index) =>
            _pageViewLayouts[index % _pageViewLayouts.length],
        onPageChanged: (index) {
          context.read<HomeBloc>().add(
                HomeEvent.pageViewIndexChanged(
                  index % _pageViewLayouts.length,
                ),
              );
        },
      ),
    );
  }
}
