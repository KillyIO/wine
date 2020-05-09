import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sailor/sailor.dart';
import 'package:wine/application/authentication/core/core_authentication_bloc.dart';
import 'package:wine/application/authentication/splash/splash_authentication_bloc.dart';
import 'package:wine/application/database/splash/splash_database_bloc.dart';
import 'package:wine/presentation/pages/splash/widgets/splash_copyright.dart';
import 'package:wine/presentation/widgets/custom_show_dialog.dart';
import 'package:wine/presentation/widgets/wine_error_dialog.dart';
import 'package:wine/routes.dart';
import 'package:wine/utils/constants.dart';

class SplashLayout extends StatefulWidget {
  @override
  _SplashLayoutState createState() => _SplashLayoutState();
}

class _SplashLayoutState extends State<SplashLayout> {
  @override
  void initState() {
    super.initState();
    context
        .bloc<SplashAuthenticationBloc>()
        .add(const SplashAuthenticationEvent.appLaunched());
    context
        .bloc<CoreAuthenticationBloc>()
        .add(const CoreAuthenticationEvent.getUserAnonymousStatus());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MultiBlocListener(
        listeners: [
          BlocListener<SplashAuthenticationBloc, SplashAuthenticationState>(
            listener: (context, state) {
              if (!state.isAuthenticating) {
                state.authenticationFailureOrSuccessOption.fold(
                  () => context
                      .bloc<SplashDatabaseBloc>()
                      .add(SplashDatabaseEvent.authenticated(
                        isAnonymous: state.isAnonymous,
                      )),
                  (some) => some.fold(
                    (failure) => failure.maybeMap(
                      serverError: (_) {
                        customShowDialog(
                          context: context,
                          builder: (_) => WINEErrorDialog(
                            message: 'An unexpected error occured!',
                            buttonText: 'RESTART',
                            onPressed: () => context
                                .bloc<SplashAuthenticationBloc>()
                                .add(
                                  const SplashAuthenticationEvent.appLaunched(),
                                ),
                          ),
                        );
                      },
                      orElse: () {},
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
                  () => sailor.navigate(
                    Constants.homeRoute,
                    navigationType: NavigationType.pushReplace,
                  ),
                  (some) => some.fold(
                    (failure) => customShowDialog(
                      context: context,
                      builder: (_) => WINEErrorDialog(
                        message: 'An unexpected error occured!',
                        buttonText: 'RESTART',
                        onPressed: () => context
                            .bloc<SplashAuthenticationBloc>()
                            .add(const SplashAuthenticationEvent.appLaunched()),
                      ),
                    ),
                    (_) => sailor.navigate(
                      Constants.homeRoute,
                      navigationType: NavigationType.pushReplace,
                    ),
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
