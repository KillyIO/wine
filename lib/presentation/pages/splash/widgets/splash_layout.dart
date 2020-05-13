import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sailor/sailor.dart';
import 'package:wine/application/authentication/splash/splash_authentication_bloc.dart';
import 'package:wine/application/database/splash/splash_database_bloc.dart';
import 'package:wine/presentation/pages/splash/widgets/splash_copyright.dart';
import 'package:wine/presentation/widgets/wine_show_dialog.dart';
import 'package:wine/presentation/widgets/wine_error_dialog.dart';
import 'package:wine/routes.dart';
import 'package:wine/utils/constants.dart';

class SplashLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MultiBlocListener(
        listeners: [
          BlocListener<SplashAuthenticationBloc, SplashAuthenticationState>(
            listener: (context, state) {
              if (!state.isAuthenticating) {
                state.authenticationFailureOrSuccessOption.fold(
                  () {},
                  (some) => some.fold(
                    (failure) => failure.maybeMap(
                      serverError: (_) {
                        wineShowDialog(
                          context: context,
                          builder: (_) => WINEErrorDialog(
                            message: 'An unexpected error occured!',
                            buttonText: 'RESTART',
                            onPressed: () => context
                                .bloc<SplashAuthenticationBloc>()
                                .add(const SplashAuthenticationEvent
                                    .splashLaunched()),
                          ),
                        );
                      },
                      orElse: null,
                    ),
                    (_) => context
                        .bloc<SplashDatabaseBloc>()
                        .add(SplashDatabaseEvent.authenticated(
                          isAnonymous: state.isAnonymous,
                        )),
                  ),
                );
              }
            },
          ),
          BlocListener<SplashDatabaseBloc, SplashDatabaseState>(
            listener: (context, state) {
              if (!state.isUpdating && state.isLogoAnimationCompleted) {
                state.databaseFailureOrSuccessOption.fold(
                  () {
                    if (state.isLogoAnimationCompleted) {
                      sailor.navigate(
                        Constants.homeRoute,
                        navigationType: NavigationType.pushReplace,
                      );
                    }
                  },
                  (some) => some.fold(
                    (failure) => failure.maybeMap(
                      failedToFetchOnlineData: (_) => wineShowDialog(
                        context: context,
                        builder: (_) => WINEErrorDialog(
                          message:
                              'Failed to fetch data from our servers! Please restart WINE.',
                          buttonText: 'RESTART',
                          onPressed: () => context
                              .bloc<SplashAuthenticationBloc>()
                              .add(const SplashAuthenticationEvent
                                  .splashLaunched()),
                        ),
                      ),
                      failedToRetrieveLocalData: (_) => wineShowDialog(
                        context: context,
                        builder: (_) => WINEErrorDialog(
                          message:
                              'Failed to retrieve data on your device! Please restart WINE.',
                          buttonText: 'RESTART',
                          onPressed: () => context
                              .bloc<SplashAuthenticationBloc>()
                              .add(const SplashAuthenticationEvent
                                  .splashLaunched()),
                        ),
                      ),
                      failedToUpdateLocalData: (_) => wineShowDialog(
                        context: context,
                        builder: (_) => WINEErrorDialog(
                          message:
                              'Failed to update data on your device! Please restart WINE.',
                          buttonText: 'RESTART',
                          onPressed: () => context
                              .bloc<SplashAuthenticationBloc>()
                              .add(const SplashAuthenticationEvent
                                  .splashLaunched()),
                        ),
                      ),
                      orElse: null,
                    ),
                    (_) {
                      if (state.isLogoAnimationCompleted) {
                        sailor.navigate(
                          Constants.homeRoute,
                          navigationType: NavigationType.pushReplace,
                        );
                      }
                    },
                  ),
                );
              }
            },
          ),
        ],
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.center,
              child: FlareActor(
                'assets/animation/logo.flr',
                animation: 'splash',
                callback: (String name) {
                  if (name == 'splash') {
                    context.bloc<SplashDatabaseBloc>().add(
                        const SplashDatabaseEvent.logoAnimationCompleted());
                  }
                },
              ),
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
