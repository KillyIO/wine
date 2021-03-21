import 'package:flare_loading/flare_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/splash/splash_bloc.dart';
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
                orElse: null,
                serverError: (_) async =>
                    restartApp(context, 'An unexpected error occured!'),
              ),
              defaultCovers: (f) => f.f.maybeMap(
                defaultCoverURLsNotCached: (_) async =>
                    restartApp(context, 'Default covers were not cached!'),
                defaultCoverURLsNotLoaded: (_) async =>
                    restartApp(context, 'Default covers were not loaded!'),
                orElse: null,
              ),
              sessions: (f) => f.f.maybeMap(
                sessionNotUpdated: (_) async =>
                    restartApp(context, 'Session was not updated!'),
                orElse: null,
              ),
              settings: (f) => f.f.maybeMap(
                settingsNotInitialized: (_) async =>
                    restartApp(context, 'Settings were not initialized!'),
                orElse: null,
              ),
              user: (f) => f.f.maybeMap(
                userNotFound: (_) async =>
                    restartApp(context, 'User account not found!'),
                orElse: null,
              ),
              orElse: null,
            );
          },
          goToHome: (value) {
            // TODO Add navigate to home
          },
          goToOnboarding: (value) {
            // TODO Navigate to onboarding page
          },
          orElse: null,
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
