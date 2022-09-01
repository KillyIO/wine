import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:wine/presentation/core/app_development.dart';
import 'package:wine/development_firebase_options.dart';
import 'package:wine/flavors.dart';
import 'package:wine/injection.dart';
import 'package:wine/simple_bloc_observer.dart';

Future<void> main() async {
  F.appFlavor = Flavor.development;

  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await configureInjection(Environment.dev);

  BlocOverrides.runZoned(
    () => runApp(AppDevelopment()),
    blocObserver: SimpleBlocObserver(),
  );
}
