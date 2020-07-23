import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:wine/presentation/routes/router.gr.dart';

class DevelopmentApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WINE Dev',
      builder: ExtendedNavigator<Router>(router: Router()),
    );
  }
}
