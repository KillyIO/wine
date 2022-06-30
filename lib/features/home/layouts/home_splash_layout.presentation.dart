import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:wine/features/home/home_splash_copyright.presentation.dart';
import 'package:wine/utils/constants/animations.dart';

/// @nodoc
class HomeSplashLayout extends StatelessWidget {
  /// @nodoc
  const HomeSplashLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
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
    );
  }
}
