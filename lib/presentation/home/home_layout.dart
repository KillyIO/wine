import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/home/home_navigation/home_navigation_bloc.dart';
import 'package:wine/presentation/home/widgets/home_app_bar.dart';

/// @nodoc
class HomeLayout extends StatelessWidget {
  /// @nodoc
  HomeLayout({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeNavigationBloc, HomeNavigationState>(
      builder: (context, state) {
        return Stack(
          children: <Widget>[
            Scaffold(
              backgroundColor: Colors.white,
              appBar: HomeAppBar(),
            ),
          ],
        );
      },
    );
  }
}
