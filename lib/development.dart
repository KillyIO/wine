import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'package:wine/application/authentication/core/core_authentication_bloc.dart';
import 'package:wine/application/database/core/core_database_bloc.dart';
import 'package:wine/application/outlier/core/core_outlier_bloc.dart';
import 'package:wine/injection.dart';
import 'package:wine/presentation/core/development_app.dart';
import 'package:wine/simple_bloc_observer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Bloc.observer = SimpleBlocObserver();

  await configureInjection(Environment.dev);
  runApp(MultiBlocProvider(providers: [
    BlocProvider<CoreAuthenticationBloc>(
      create: (_) => getIt<CoreAuthenticationBloc>()..add(const CoreAuthenticationEvent.appLaunchedEVT()),
    ),
    BlocProvider<CoreDatabaseBloc>(create: (_) => getIt<CoreDatabaseBloc>()),
    BlocProvider<CoreOutlierBloc>(
      create: (_) => getIt<CoreOutlierBloc>()..add(const CoreOutlierEvent.appLaunchedEVT()),
    ),
  ], child: DevelopmentApp()));
}
