import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/blocs/home/home_bloc.dart';
import 'package:wine/blocs/splash/splash_bloc.dart';
import 'package:wine/models/route_transition.dart';
import 'package:wine/utils/themes.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return AnnotatedRegion<SystemUiOverlayStyle>(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: BlocListener<SplashBloc, SplashState>(
            listener: (context, state) {
              if (state is STENavigating) {
                Navigator.of(context).pushReplacementNamed(state.route,
                    arguments: RouteTransition.fade);
              }
              if (state is STENavigated) {
                BlocProvider.of<HomeBloc>(context)
                  ..add(EVTOnDrawerClicked(openDrawer: false));
              }
            },
            child: Stack(
              children: <Widget>[
                FlareActor(
                  'assets/animation/logo.flr',
                  animation: 'splash',
                  callback: (name) {
                    if (name == 'splash') {
                      BlocProvider.of<SplashBloc>(context)
                        ..add(EVTOnLogoAnimationFinished());
                    }
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          color: Colors.grey,
                          height: 2.0,
                          width: 25.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 7.5, bottom: 2.5),
                          child: Text(
                            'DESIGNED BY',
                            style: TextStyle(
                                fontSize: 7.5, fontWeight: FontWeight.w300),
                          ),
                        ),
                        Text(
                          'SEBIGO',
                          style: TextStyle(
                              fontSize: 7.5, fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      value: Themes.wineLightTheme(),
    );
  }
}
