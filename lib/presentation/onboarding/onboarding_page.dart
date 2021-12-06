import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:wine/presentation/routes/router.gr.dart';

/// @nodoc
class OnboardingPage extends StatelessWidget {
  /// @nodoc
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: IntroductionScreen(
          done: const Text(
            'Start',
          ),
          onDone: () async => context.router.replace(const HomeRoute()),
          pages: [
            // TODO(SSebigo): add pages
            PageViewModel(
              title: 'Placeholder title',
              body: 'Placeholder body',
            ),
          ],
          showNextButton: false,
        ),
      ),
    );
  }
}
