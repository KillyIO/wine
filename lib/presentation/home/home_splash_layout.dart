import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:wine/presentation/home/widgets/home_splash_copyright.dart';
import 'package:wine/utils/assets/animations.dart';

/// @nodoc
class HomeSplashLayout extends StatelessWidget {
  /// @nodoc
  const HomeSplashLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: const <Widget>[
          FlareActor(
            logoAnimation,
            animation: 'logo',
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 25),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: HomeSplashCopyright(),
            ),
          ),
        ],
      ),
    );
  }
}
