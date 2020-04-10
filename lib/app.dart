import 'package:flutter/material.dart';
import 'package:wine/pages/splash/splash.dart';
import 'package:wine/route_generator.dart';

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
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
