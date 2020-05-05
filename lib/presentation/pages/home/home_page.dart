import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/authentication/core/core_authentication_bloc.dart';
import 'package:wine/application/navigation/home/home_navigation_bloc.dart';
import 'package:wine/presentation/pages/home/widgets/home_app_bar.dart';
import 'package:wine/routes.dart';
import 'package:wine/utils/arguments.dart';
import 'package:wine/utils/constants.dart';
import 'package:wine/utils/themes.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    context.bloc<CoreAuthenticationBloc>().add(const PageLaunched());
    super.initState();
  }

  void _menuEdgeSwipe(bool isMenuOpen) {
    context.bloc<HomeNavigationBloc>().add(MenuIconPressed(
          isMenuOpen: isMenuOpen,
        ));
    sailor(Constants.homeMenuRoute);
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: Themes.wineLightTheme(),
      child: MultiBlocListener(
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
                      onHorizontalDragStart: (details) {
                        final double initialPosition =
                            details.globalPosition.dx;
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
                      child: Container(
                        color: Colors.transparent,
                        width: 20.0,
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
