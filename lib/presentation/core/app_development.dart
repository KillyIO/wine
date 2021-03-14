import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:wine/flavors.dart';
import 'package:wine/presentation/routes/router.gr.dart';
import 'package:wine/presentation/splash/splash_page.dart';

/// @nodoc
class AppDevelopment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: ExtendedNavigator.builder<AppRouter>(router: AppRouter()),
      home: SplashPage(),
      title: F.title,
    );
  }
}
