import 'package:auto_route/auto_route.dart';
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
            if (value.authOption != null) {
              value.authOption.fold(
                null,
                (some) => some.fold(
                  (failure) => failure.maybeMap(
                    orElse: null,
                    serverError: (_) async =>
                        restartApp(context, 'An unexpected error occured!'),
                  ),
                  null,
                ),
              );
            } else if (value.defaultCoverOption != null) {
              value.defaultCoverOption.fold(
                null,
                (some) => some.fold(
                  (failure) => failure.maybeMap(
                    defaultCoverURLsNotCached: (_) async =>
                        restartApp(context, 'Default covers were not cached!'),
                    defaultCoverURLsNotLoaded: (_) async =>
                        restartApp(context, 'Default covers were not loaded!'),
                    orElse: null,
                  ),
                  null,
                ),
              );
            } else if (value.sessionOption != null) {
              value.sessionOption.fold(
                null,
                (some) => some.fold(
                  (failure) => failure.maybeMap(
                    sessionNotFetched: (_) {
                      // TODO Navigate to onboarding page
                    },
                    sessionNotUpdated: (_) async =>
                        restartApp(context, 'Session was not updated!'),
                    orElse: null,
                  ),
                  null,
                ),
              );
            } else if (value.settingsOption != null) {
              value.settingsOption.fold(
                null,
                (some) => some.fold(
                  (failure) => failure.maybeMap(
                    settingsNotInitialized: (_) async =>
                        restartApp(context, 'Settings were not initialized!'),
                    orElse: null,
                  ),
                  null,
                ),
              );
            } else if (value.userOption != null) {
              value.userOption.fold(
                null,
                (some) => some.fold(
                  (failure) => failure.maybeMap(
                    userNotFound: (_) async =>
                        restartApp(context, 'User account not found!'),
                    orElse: null,
                  ),
                  null,
                ),
              );
            }
          },
          goToHome: (value) {
            // TODO Add navigate to home
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
