import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:wine/app.dart';
import 'package:wine/application/authentication/core/core_authentication_bloc.dart';
import 'package:wine/application/authentication/create_account/create_account_authentication_bloc.dart';
import 'package:wine/application/authentication/settings/settings_authentication_bloc.dart';
import 'package:wine/application/authentication/sign_in/sign_in_authentication_bloc.dart';
import 'package:wine/application/authentication/splash/splash_authentication_bloc.dart';
import 'package:wine/application/database/create_account/create_account_database_bloc.dart';
import 'package:wine/application/database/series/series_database_bloc.dart';
import 'package:wine/application/database/settings/settings_database_bloc.dart';
import 'package:wine/application/database/sign_in/sign_in_database_bloc.dart';
import 'package:wine/application/database/splash/splash_database_bloc.dart';
import 'package:wine/application/navigation/home/home_navigation_bloc.dart';
import 'package:wine/injection.dart';
import 'package:wine/routes.dart';
import 'package:wine/simple_bloc_delegate.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  BlocSupervisor.delegate = SimpleBlocDelegate();

  await configureInjection(Environment.prod);
  createRoutes();
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider<CoreAuthenticationBloc>(
        create: (_) => getIt<CoreAuthenticationBloc>(),
      ),
      BlocProvider<SplashAuthenticationBloc>(
        create: (_) => getIt<SplashAuthenticationBloc>(),
      ),
      BlocProvider<SplashDatabaseBloc>(
        create: (_) => getIt<SplashDatabaseBloc>(),
      ),
      BlocProvider<HomeNavigationBloc>(
        create: (_) => getIt<HomeNavigationBloc>(),
      ),
      BlocProvider<SeriesDatabaseBloc>(
        create: (_) => getIt<SeriesDatabaseBloc>(),
      ),
      BlocProvider<SettingsAuthenticationBloc>(
        create: (_) => getIt<SettingsAuthenticationBloc>(),
      ),
      BlocProvider<SettingsDatabaseBloc>(
        create: (_) => getIt<SettingsDatabaseBloc>(),
      ),
      BlocProvider<SignInAuthenticationBloc>(
        create: (_) => getIt<SignInAuthenticationBloc>(),
      ),
      BlocProvider<SignInDatabaseBloc>(
        create: (_) => getIt<SignInDatabaseBloc>(),
      ),
      BlocProvider<CreateAccountAuthenticationBloc>(
        create: (_) => getIt<CreateAccountAuthenticationBloc>(),
      ),
      BlocProvider<CreateAccountDatabaseBloc>(
        create: (_) => getIt<CreateAccountDatabaseBloc>(),
      ),
    ],
    child: App(),
  ));
}
