import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:introduction_screen/introduction_screen.dart';

import 'package:wine/presentation/routes/router.gr.dart';
import 'package:wine/utils/themes.dart';

/// @nodoc
class OnboardingPage extends StatelessWidget {
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
          child: IntroductionScreen(
            done: const Text(
              'Start',
            ),
            onDone: () => ExtendedNavigator.root.replace(Routes.homePage),
            pages: [
              // TODO add pages
              PageViewModel(
                title: 'Placeholder title',
                body: 'Placeholder body',
              ),
            ],
          ),
        ),
      ),
      value: lightTheme,
    );
  }
}
