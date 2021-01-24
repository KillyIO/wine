import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'package:wine/application/authentication/core/core_authentication_bloc.dart';
import 'package:wine/application/database/core/core_database_bloc.dart';
import 'package:wine/application/other/core/core_other_bloc.dart';
import 'package:wine/flavors.dart';
import 'package:wine/injection.dart';
import 'package:wine/presentation/core/development_app.dart';
import 'package:wine/simple_bloc_observer.dart';

Future<void> main() async {
  F.appFlavor = Flavor.DEVELOPMENT;

  WidgetsFlutterBinding.ensureInitialized();

  Bloc.observer = SimpleBlocObserver();

  await Future.wait([
    configureInjection(Environment.dev),
    Firebase.initializeApp(),
  ]);

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<CoreAuthenticationBloc>(
          create: (_) => getIt<CoreAuthenticationBloc>()
            ..add(const CoreAuthenticationEvent.appLaunchedEVT()),
        ),
        BlocProvider<CoreDatabaseBloc>(
          create: (_) => getIt<CoreDatabaseBloc>(),
        ),
        BlocProvider<CoreOtherBloc>(
          create: (_) => getIt<CoreOtherBloc>()
            ..add(const CoreOtherEvent.appLaunchedEVT()),
        ),
      ],
      child: DevelopmentApp(),
    ),
  );
}
