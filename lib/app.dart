import 'package:flutter/material.dart';
import 'package:sailor/sailor.dart';
import 'package:wine/presentation/pages/splash/index.dart';
import 'package:wine/routes.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WINE',
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
      onGenerateRoute: sailor.generator(),
      navigatorKey: sailor.navigatorKey,
      navigatorObservers: [
        SailorLoggingObserver(),
      ],
    );
  }
}
