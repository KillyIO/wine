import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:wine/application/authentication/core/core_authentication_bloc.dart';
import 'package:wine/application/database/home/home_database_bloc.dart';
import 'package:wine/application/navigation/home/home_navigation_bloc.dart';
import 'package:wine/injection.dart';
import 'package:wine/presentation/core/production_app.dart';
import 'package:wine/routes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await configureInjection(Environment.prod);
  createRoutes();
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider<CoreAuthenticationBloc>(
        create: (_) => getIt<CoreAuthenticationBloc>()..add(const CoreAuthenticationEvent.appLaunchedEVT()),
      ),
      BlocProvider(create: (context) => getIt<HomeNavigationBloc>()),
      BlocProvider(create: (context) => getIt<HomeDatabaseBloc>())
    ],
    child: ProductionApp(),
  ));
}
