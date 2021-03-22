import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:wine/flavors.dart';
import 'package:wine/injection.dart';
import 'package:wine/presentation/core/app_beta.dart';

Future<void> main() async {
  F.appFlavor = Flavor.beta;

  WidgetsFlutterBinding.ensureInitialized();

  await Future.wait([
    configureInjection(Environment.test),
    Firebase.initializeApp(),
  ]);

  runApp(AppBeta());
}
