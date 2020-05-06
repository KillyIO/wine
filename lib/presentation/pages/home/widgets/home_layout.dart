import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/navigation/home/home_navigation_bloc.dart';
import 'package:wine/presentation/pages/home/widgets/home_app_bar.dart';
import 'package:wine/routes.dart';
import 'package:wine/utils/arguments.dart';
import 'package:wine/utils/constants.dart';

class HomeLayout extends StatefulWidget {
  @override
  _HomeLayoutState createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  void _menuEdgeSwipe(bool isMenuOpen) {
    context
        .bloc<HomeNavigationBloc>()
        .add(HomeNavigationEvent.menuIconPressed(isMenuOpen: isMenuOpen));
    sailor(Constants.homeMenuRoute);
  }

  @override
  Widget build(BuildContext context) {
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
        builder: (context, navigationState) {
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: HomeAppBar(
              isMenuOpen: navigationState.isMenuOpen,
              isNewSeriesPageOpen: navigationState.isNewSeriesPageOpen,
            ),
            body: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onHorizontalDragStart: (details) {
                      final double initialPosition = details.globalPosition.dx;
                      context.bloc<HomeNavigationBloc>().add(MenuDragStarted(
                            initialPosition: initialPosition,
                          ));
                    },
                    onHorizontalDragUpdate: (details) {
                      final double distance = details.globalPosition.dx -
                          navigationState.initialPosition;
                      context.bloc<HomeNavigationBloc>().add(MenuDragUpdated(
                            distance: distance,
                          ));
                    },
                    onHorizontalDragEnd: (DragEndDetails details) {
                      final velocity = details.velocity.pixelsPerSecond.dx;
                      if (navigationState.distance < 0 &&
                          velocity <= -150 &&
                          !navigationState.isMenuOpen) {
                        _menuEdgeSwipe(navigationState.isMenuOpen);
                      }
                    },
                    child: SizedBox(
                      width: 20,
                      height: MediaQuery.of(context).size.height,
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
