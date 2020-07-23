import 'package:after_layout/after_layout.dart';
import 'package:flare_loading/flare_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/authentication/splash/splash_authentication_bloc.dart';
import 'package:wine/presentation/pages/splash/utils/splash_listeners.dart';
import 'package:wine/presentation/pages/splash/widgets/splash_copyright.dart';

class SplashLayout extends StatefulWidget {
  @override
  _SplashLayoutState createState() => _SplashLayoutState();
}

class _SplashLayoutState extends State<SplashLayout> with AfterLayoutMixin {
  SplashListeners _splashListeners;

  @override
  void initState() {
    super.initState();
    _splashListeners = SplashListeners();
  }

  @override
  void afterFirstLayout(BuildContext context) {
    context.bloc<SplashAuthenticationBloc>().add(const SplashAuthenticationEvent.splashLaunchedEVT());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MultiBlocListener(
        listeners: _splashListeners.listeners,
        child: Stack(
          children: <Widget>[
            FlareLoading(
              name: 'assets/animation/logo.flr',
              startAnimation: 'logo',
              loopAnimation: 'logo',
              onError: (error, stacktrace) {},
              onSuccess: (data) {},
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 25.0),
              child: Align(alignment: Alignment.bottomCenter, child: SplashCopyright()),
            ),
          ],
        ),
      ),
    );
  }
}
