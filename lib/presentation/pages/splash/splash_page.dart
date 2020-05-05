import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sailor/sailor.dart';
import 'package:wine/application/authentication/splash/splash_authentication_bloc.dart';
import 'package:wine/application/database/splash/splash_database_bloc.dart';
import 'package:wine/presentation/pages/splash/widgets/splash_copyright.dart';
import 'package:wine/presentation/widgets/custom_show_dialog.dart';
import 'package:wine/presentation/widgets/error_dialog.dart';
import 'package:wine/routes.dart';
import 'package:wine/utils/constants.dart';
import 'package:wine/utils/themes.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    context.bloc<SplashAuthenticationBloc>().add(const AppLaunched());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: Themes.wineLightTheme(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          top: false,
          child: MultiBlocListener(
            listeners: [
              BlocListener<SplashAuthenticationBloc, SplashAuthenticationState>(
                listener: (context, state) {
                  final accountStatus = state.accountStatus;

                  if (!state.isAuthenticating) {
                    state.authenticationFailureOrSuccessOption.fold(
                      () => context
                          .bloc<SplashDatabaseBloc>()
                          .add(SplashDatabaseEvent.authenticated(
                            accountStatus: accountStatus,
                          )),
                      (some) => some.fold(
                        (failure) => failure.map(
                          cancelledByUser: (_) {},
                          serverError: (_) => customShowDialog(
                            context: context,
                            builder: (_) => ErrorDialog(
                              message: 'An unexpected error occured!',
                              buttonText: 'RESTART',
                              onPressed: () => context
                                  .bloc<SplashAuthenticationBloc>()
                                  .add(const AppLaunched()),
                            ),
                          ),
                          emailAlreadyInUse: (_) {},
                          invalidEmailAndPasswordCombination: (_) {},
                          usernameAlreadyInUse: (_) {},
                          unableToSignOut: (_) {},
                        ),
                        (_) => context
                            .bloc<SplashDatabaseBloc>()
                            .add(SplashDatabaseEvent.authenticated(
                              accountStatus: accountStatus,
                            )),
                      ),
                    );
                  }
                },
              ),
              BlocListener<SplashDatabaseBloc, SplashDatabaseState>(
                listener: (context, state) {
                  final isLogoAnimationCompleted =
                      state.isLogoAnimationCompleted;

                  if (!state.isUpdating && isLogoAnimationCompleted) {
                    state.databaseFailureOrSuccessOption.fold(
                      () => sailor.navigate(
                        Constants.homeRoute,
                        navigationType: NavigationType.pushReplace,
                      ),
                      (some) => some.fold(
                        (failure) => customShowDialog(
                          context: context,
                          builder: (_) => ErrorDialog(
                            message: 'An unexpected error occured!',
                            buttonText: 'RESTART',
                            onPressed: () => context
                                .bloc<SplashAuthenticationBloc>()
                                .add(const AppLaunched()),
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
                        context
                            .bloc<SplashDatabaseBloc>()
                            .add(const LogoAnimationCompleted());
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
        ),
      ),
    );
  }
}
