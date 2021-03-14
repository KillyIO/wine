import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:wine/flavors.dart';
import 'package:wine/injection.dart';
import 'package:wine/presentation/core/app_development.dart';
import 'package:wine/simple_bloc_observer.dart';

void main() {
  F.appFlavor = Flavor.development;

  WidgetsFlutterBinding.ensureInitialized();

  Bloc.observer = SimpleBlocObserver();

  configureInjection(Environment.dev);

  runApp(AppDevelopment());
}
