import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:wine/flavors.dart';
import 'package:wine/presentation/routes/router.gr.dart';

/// @nodoc
class AppDevelopment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: F.title,
      builder: ExtendedNavigator.builder<AppRouter>(router: AppRouter()),
    );
  }
}
