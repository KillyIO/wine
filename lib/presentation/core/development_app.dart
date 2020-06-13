import 'package:flutter/material.dart';
import 'package:sailor/sailor.dart';
import 'package:wine/presentation/pages/splash/splash_page.dart';
import 'package:wine/routes.dart';

class DevelopmentApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'WINE Dev',
      home: SplashPage(),
      onGenerateRoute: sailor.generator(),
      navigatorKey: sailor.navigatorKey,
      navigatorObservers: [
        SailorLoggingObserver(),
      ],
    );
  }
}
