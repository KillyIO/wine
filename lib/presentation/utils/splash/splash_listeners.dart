import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:wine/application/authentication/splash/splash_authentication_bloc.dart';
import 'package:wine/application/database/splash/splash_database_bloc.dart';
import 'package:wine/domain/authentication/authentication_success.dart';
import 'package:wine/presentation/utils/splash/splash_authentication_methods.dart';
import 'package:wine/presentation/routes/router.gr.dart';

/// @nodoc
class SplashListeners {
  final SplashAuthenticationMethods _splashAuthenticationMethods =
      SplashAuthenticationMethods();

  BlocListener<SplashAuthenticationBloc, SplashAuthenticationState>
      _authListener() =>
          BlocListener<SplashAuthenticationBloc, SplashAuthenticationState>(
            listener: (context, state) {
              if (!state.isAuthenticating) {
                state.authenticationFailureOrSuccessOption.fold(
                  () => context
                      .read<SplashDatabaseBloc>()
                      .add(SplashDatabaseEvent.authenticatedEVT(
                        isAnonymous: state.isAnonymous,
                      )),
                  (some) => some.fold(
                    (failure) => failure.maybeMap(
                      serverFailure: (_) async =>
                          _splashAuthenticationMethods.restartSplash(
                        context,
                        'An unexpected error occured!',
                      ),
                      orElse: () => null,
                    ),
                    (success) {
                      if (success is UserSignedInAnonymouslySuccess) {
                        context
                            .read<SplashDatabaseBloc>()
                            .add(const SplashDatabaseEvent.authenticatedEVT(
                              isAnonymous: true,
                            ));
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
          state.configDatabaseFailureOrSuccessOption.fold(
            () => null,
            (some) => some.fold(
              (failure) => failure.maybeMap(
                deleteConfigFailure: (_) {},
                initializeConfigFailure: (_) {},
                updateConfigFailure: (_) {},
                orElse: () => null,
              ),
              (success) => success.map(
                configDeletedSuccess: (_) {},
                configFetchedSuccess: (_) async =>
                    await ExtendedNavigator.root.replace(Routes.homePage),
                // TODO replace route for onboarding route
                configInitializedSuccess: (_) async =>
                    await ExtendedNavigator.root.replace(Routes.homePage),
                configUpdatedSuccess: (_) {},
              ),
            ),
          );

          state.placeholderDatabaseFailureOrSuccessOption.fold(
            () {},
            (some) => some.fold(
              (failure) => failure.maybeMap(
                failedToFetchPlaceholderFLR: (_) async =>
                    _splashAuthenticationMethods.restartSplash(
                  context,
                  'WINE failed to fetch local data! Please restart WINE.',
                ),
                failedToInitializePlaceholdersFLR: (_) async =>
                    _splashAuthenticationMethods.restartSplash(
                  context,
                  // ignore: lines_longer_than_80_chars
                  'WINE failed to save data on your device! Please restart WINE.',
                ),
                failedToLoadPlaceholdersFLR: (_) async =>
                    _splashAuthenticationMethods.restartSplash(
                  context,
                  'WINE failed to load remote data! Please restart WINE.',
                ),
                orElse: () => null,
              ),
              (_) {},
            ),
          );

          state.sessionDatabaseFailureOrSuccessOption.fold(
            () {},
            (some) => some.fold(
              (_) {},
              (_) {},
            ),
          );

          state.userDatabaseFailureOrSuccessOption.fold(
            () {},
            (some) => some.fold(
              (_) {},
              (_) {},
            ),
          );
        },
      );

  /// @nodoc
  List<BlocListener> get listeners =>
      <BlocListener>[_authListener(), _dbListener()];
}
