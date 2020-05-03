import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/authentication/core/core_authentication_bloc.dart';
import 'package:wine/application/navigation/home/home_navigation_bloc.dart';
import 'package:wine/presentation/pages/home/widgets/animated_icon_button.dart';
import 'package:wine/routes.dart';
import 'package:wine/utils/constants.dart';
import 'package:wine/utils/themes.dart';

class HomeMenuPage extends StatefulWidget {
  @override
  _HomeMenuPageState createState() => _HomeMenuPageState();
}

class _HomeMenuPageState extends State<HomeMenuPage> {
  @override
  void initState() {
    context.bloc<CoreAuthenticationBloc>().add(const PageLaunched());
    super.initState();
  }

  void _menuIconPressed(bool isMenuOpen) {
    context.bloc<HomeNavigationBloc>().add(MenuIconPressed(
          isMenuOpen: isMenuOpen,
        ));
    Navigator.of(context).pop();
  }

  void _backSwipe(bool isMenuOpen) {
    context.bloc<HomeNavigationBloc>().add(MenuIconPressed(
          isMenuOpen: isMenuOpen,
        ));
    Navigator.of(context).pop();
  }

  Future<bool> _onWillPop(bool isMenuOpen) async {
    final bool canPop = Navigator.of(context).canPop();

    if (canPop) {
      context.bloc<HomeNavigationBloc>().add(MenuIconPressed(
            isMenuOpen: isMenuOpen,
          ));
    }
    return canPop;
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: Themes.wineLightTheme(),
      child: BlocBuilder<HomeNavigationBloc, HomeNavigationState>(
        builder: (context, navigationState) {
          return WillPopScope(
            onWillPop: () => _onWillPop(navigationState.isMenuOpen),
            child: Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                brightness: Brightness.light,
                elevation: 0.0,
                leading: Container(),
                actions: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: AnimatedIconButton(
                      animation: navigationState.isMenuOpen
                          ? 'menu_to_x'
                          : 'x_to_menu',
                      filename: 'assets/animation/menu.flr',
                      height: 20.0,
                      onPressed: () =>
                          _menuIconPressed(navigationState.isMenuOpen),
                      width: 20.0,
                    ),
                  ),
                ],
              ),
              body: SafeArea(
                child: Stack(
                  children: <Widget>[
                    GestureDetector(
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
                        if (navigationState.distance > 0 &&
                            velocity >= 150 &&
                            navigationState.isMenuOpen) {
                          _backSwipe(navigationState.isMenuOpen);
                        }
                      },
                      child: Container(
                        color: Colors.transparent,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(bottom: 50.0),
                            child: Container(
                              decoration: const BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(width: 3.0),
                                ),
                              ),
                              height: 30.0,
                              child: GestureDetector(
                                onTap: () => sailor(Constants.settingsRoute),
                                child: Text(
                                  'SETTINGS',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
