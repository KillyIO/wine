import 'package:auto_route/auto_route.dart';
import 'package:flare_loading/flare_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:wine/application/splash/splash_bloc.dart';
import 'package:wine/presentation/routes/router.gr.dart';
import 'package:wine/presentation/splash/widgets/splash_copyright.dart';
import 'package:wine/utils/assets/animations.dart';
import 'package:wine/utils/functions.dart';

/// @nodoc
class SplashLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashBloc, SplashState>(
      listener: (context, state) {
        state.maybeMap(
          failure: (value) {
            value.failure.maybeMap(
              auth: (f) => f.f.maybeMap(
                orElse: () {},
                serverError: (_) async =>
                    restartApp(context, 'A problem occurred on our end!'),
                unexpected: (_) async =>
                    restartApp(context, 'An unexpected error occured!'),
              ),
              defaultCovers: (f) => f.f.maybeMap(
                defaultCoverURLsNotCached: (_) async =>
                    restartApp(context, 'Default covers were not cached!'),
                defaultCoverURLsNotLoaded: (_) async =>
                    restartApp(context, 'Default covers were not loaded!'),
                orElse: () {},
                serverError: (_) async =>
                    restartApp(context, 'A problem occurred on our end!'),
                unexpected: (_) async =>
                    restartApp(context, 'An unexpected error occured!'),
              ),
              sessions: (f) => f.f.maybeMap(
                sessionNotCreated: (_) async =>
                    restartApp(context, 'Session was not created!'),
                sessionNotUpdated: (_) async =>
                    restartApp(context, 'Session was not updated!'),
                orElse: () {},
              ),
              settings: (f) => f.f.maybeMap(
                settingsNotInitialized: (_) async =>
                    restartApp(context, 'Settings were not initialized!'),
                orElse: () {},
              ),
              user: (f) => f.f.maybeMap(
                userNotFound: (_) async =>
                    restartApp(context, 'User account not found!'),
                orElse: () {},
              ),
              orElse: () {},
            );
          },
          goToHome: (value) {
            ExtendedNavigator.root.pushAndRemoveUntil(
              Routes.homePage,
              (route) => false,
            );
          },
          goToOnboarding: (value) {
            ExtendedNavigator.root.pushAndRemoveUntil(
              Routes.onboardingPage,
              (route) => false,
            );
          },
          orElse: () {},
        );
      },
      child: Stack(
        children: <Widget>[
          FlareLoading(
            name: logoAnimation,
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
    );
  }
}
