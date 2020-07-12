import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:wine/application/authentication/core/core_authentication_bloc.dart';
import 'package:wine/application/outlier/core/core_outlier_bloc.dart';
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
      BlocProvider<CoreOutlierBloc>(
        create: (_) => getIt<CoreOutlierBloc>()..add(const CoreOutlierEvent.appLaunchedEVT()),
      ),
    ],
    child: ProductionApp(),
  ));
}
