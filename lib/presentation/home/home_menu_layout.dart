import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_gesture_detector/simple_gesture_detector.dart';
import 'package:wine/application/auth/auth_bloc.dart';
import 'package:wine/application/home/home_navigation/home_navigation_bloc.dart';
import 'package:wine/presentation/core/buttons/animated_button.dart';
import 'package:wine/presentation/home/widgets/home_menu_tile.dart';
import 'package:wine/utils/assets/animations.dart';

/// @nodoc
class HomeMenuLayout extends StatelessWidget {
  /// @nodoc
  const HomeMenuLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        brightness: Brightness.light,
        elevation: 0.0,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: BlocBuilder<HomeNavigationBloc, HomeNavigationState>(
              builder: (context, homeNavigationState) {
                return AnimatedButton(
                  key: const Key('menu_button_open'),
                  animation: homeNavigationState.isRightDrawerOpen
                      ? 'menu_to_x'
                      : 'x_to_menu',
                  filename: menuAnimation,
                  onPressed: () => context
                      .read<HomeNavigationBloc>()
                      .add(const HomeNavigationEvent.rightDrawerIconPressed()),
                );
              },
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            SimpleGestureDetector(
              onHorizontalSwipe: (direction) {
                if (direction == SwipeDirection.right) {
                  context
                      .read<HomeNavigationBloc>()
                      .add(const HomeNavigationEvent.rightDrawerIconPressed());
                }
              },
              child: Container(
                color: Colors.transparent,
                width: mediaQuery.width,
                height: mediaQuery.height,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  BlocBuilder<AuthBloc, AuthState>(
                    builder: (context, state) {
                      return state.maybeMap(
                        authenticated: (_) => HomeMenuTile(
                          key: const Key('home_menu_library_tile'),
                          onPressed: () {},
                          text: 'LIBRARY',
                        ),
                        orElse: () => Container(),
                      );
                    },
                  ),
                  const SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 50.0),
                    child: HomeMenuTile(
                      key: const Key('home_menu_plus_tile'),
                      onPressed: () {},
                      text: 'PLUS',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
