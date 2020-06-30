import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sailor/sailor.dart';
import 'package:wine/application/authentication/splash/splash_authentication_bloc.dart';
import 'package:wine/application/database/splash/splash_database_bloc.dart';
import 'package:wine/domain/authentication/authentication_success.dart';
import 'package:wine/domain/database/database_success.dart';
import 'package:wine/presentation/widgets/wine_error_dialog.dart';
import 'package:wine/presentation/widgets/wine_show_dialog.dart';
import 'package:wine/routes.dart';
import 'package:wine/utils/constants.dart';

class SplashListeners {
  BlocListener<SplashAuthenticationBloc, SplashAuthenticationState> _authListener() =>
      BlocListener<SplashAuthenticationBloc, SplashAuthenticationState>(
        listener: (context, state) {
          if (!state.isAuthenticating) {
            state.authenticationFailureOrSuccessOption.fold(
              () => context
                  .bloc<SplashDatabaseBloc>()
                  .add(const SplashDatabaseEvent.authenticatedEVT(isAnonymous: false)),
              (some) => some.fold(
                (failure) => failure.maybeMap(
                  serverError: (_) => wineShowDialog(
                    context: context,
                    builder: (_) => WINEErrorDialog(
                      message: 'An unexpected error occured!',
                      buttonText: 'RESTART',
                      onPressed: () => context
                          .bloc<SplashAuthenticationBloc>()
                          .add(const SplashAuthenticationEvent.splashLaunchedEVT()),
                    ),
                  ),
                  orElse: () => null,
                ),
                (success) {
                  if (success is UserSignedInAnonymouslySCS) {
                    context
                        .bloc<SplashDatabaseBloc>()
                        .add(const SplashDatabaseEvent.authenticatedEVT(isAnonymous: true));
                  }
                },
              ),
            );
          }
        },
      );

  BlocListener<SplashDatabaseBloc, SplashDatabaseState> _dbListener() =>
      BlocListener<SplashDatabaseBloc, SplashDatabaseState>(
        listener: (context, state) {
          state.databaseFailureOrSuccessOption.fold(
            () {},
            (some) => some.fold(
              (failure) => failure.maybeMap(
                failedToFetchOnlineData: (_) => wineShowDialog(
                  context: context,
                  builder: (_) => WINEErrorDialog(
                    message: 'Failed to fetch data from our servers! Please restart WINE.',
                    buttonText: 'RESTART',
                    onPressed: () {
                      Navigator.of(context).pop(true);
                      context.bloc<SplashAuthenticationBloc>().add(const SplashAuthenticationEvent.splashLaunchedEVT());
                    },
                  ),
                ),
                failedToCreateLocalData: (_) => wineShowDialog(
                  context: context,
                  builder: (_) => WINEErrorDialog(
                    message: 'Failed to save data on your device! Please restart WINE.',
                    buttonText: 'RESTART',
                    onPressed: () {
                      Navigator.of(context).pop(true);
                      context.bloc<SplashAuthenticationBloc>().add(const SplashAuthenticationEvent.splashLaunchedEVT());
                    },
                  ),
                ),
                failedToUpdateLocalData: (_) => wineShowDialog(
                  context: context,
                  builder: (_) => WINEErrorDialog(
                    message: 'Failed to update data on your device! Please restart WINE.',
                    buttonText: 'RESTART',
                    onPressed: () {
                      Navigator.of(context).pop(true);
                      context.bloc<SplashAuthenticationBloc>().add(const SplashAuthenticationEvent.splashLaunchedEVT());
                    },
                  ),
                ),
                orElse: () => null,
              ),
              (success) {
                if (success is SessionSavedSCS || success is SessionUpdatedSCS) {
                  sailor.navigate(
                    Constants.homeRoute,
                    navigationType: NavigationType.pushReplace,
                  );
                }
              },
            ),
          );
        },
      );

  List<BlocListener> get listeners => <BlocListener>[_authListener(), _dbListener()];
}
