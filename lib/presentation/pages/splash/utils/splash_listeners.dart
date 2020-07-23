import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:wine/application/authentication/splash/splash_authentication_bloc.dart';
import 'package:wine/application/database/splash/splash_database_bloc.dart';
import 'package:wine/domain/authentication/authentication_success.dart';
import 'package:wine/domain/database/database_success.dart';
import 'package:wine/presentation/pages/splash/utils/splash_authentication_methods.dart';
import 'package:wine/presentation/routes/router.gr.dart';

class SplashListeners {
  final SplashAuthenticationMethods _splashAuthMethods = SplashAuthenticationMethods();

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
                  serverError: (_) async => _splashAuthMethods.restartSplash(context, 'An unexpected error occured!'),
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
                failedToFetchOnlineData: (_) async => _splashAuthMethods.restartSplash(
                  context,
                  'Failed to fetch data from our servers! Please restart WINE.',
                ),
                failedToCreateLocalData: (_) async => _splashAuthMethods.restartSplash(
                  context,
                  'Failed to save data on your device! Please restart WINE.',
                ),
                failedToUpdateLocalData: (_) async => _splashAuthMethods.restartSplash(
                  context,
                  'Failed to update data on your device! Please restart WINE.',
                ),
                orElse: () => null,
              ),
              (success) async {
                if (success is SessionSavedSCS || success is SessionUpdatedSCS) {
                  ExtendedNavigator.root.replace(Routes.homePage);
                }
              },
            ),
          );
        },
      );

  List<BlocListener> get listeners => <BlocListener>[_authListener(), _dbListener()];
}
