import 'package:flare_loading/flare_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/presentation/utils/splash/splash_listeners.dart';
import 'package:wine/presentation/widgets/splash/splash_copyright.dart';
import 'package:wine/utils/assets.dart';

/// @nodoc
class SplashLayout extends StatelessWidget {
  final SplashListeners _splashListeners = SplashListeners();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MultiBlocListener(
        listeners: _splashListeners.listeners,
        child: Stack(
          children: <Widget>[
            FlareLoading(
              name: Assets.logoAnimation,
              startAnimation: 'logo',
              loopAnimation: 'logo',
              onError: (error, stacktrace) {},
              onSuccess: (data) {},
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 25.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: SplashCopyright(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
