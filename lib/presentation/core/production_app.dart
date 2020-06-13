import 'package:flutter/material.dart';
import 'package:wine/presentation/pages/splash/splash_page.dart';
import 'package:wine/routes.dart';

class ProductionApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WINE',
      home: SplashPage(),
      onGenerateRoute: sailor.generator(),
      navigatorKey: sailor.navigatorKey,
    );
  }
}
