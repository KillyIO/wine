import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:wine/bootstrap.dart';
import 'package:wine/development_firebase_options.dart';
import 'package:wine/injection.dart';
import 'package:wine/presentation/core/app_development.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await configureInjection(kIsWeb ? devWeb.name : Environment.dev);

  await bootstrap(AppDevelopment.new);
}
