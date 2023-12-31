import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:wine/presentation/home/widgets/home_splash_copyright.dart';
import 'package:wine/utils/constants/animations.dart';

class HomeSplashLayout extends StatelessWidget {
  const HomeSplashLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: <Widget>[
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
