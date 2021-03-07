import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:wine/flavors.dart';
import 'package:wine/presentation/routes/router.gr.dart';

/// @nodoc
class AppProduction extends StatelessWidget {
  // /// @nodoc
  // final FirebaseAnalytics analytics = FirebaseAnalytics();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: F.title,
      builder: ExtendedNavigator.builder<AppRouter>(
        router: AppRouter(),
        // observers: <NavigatorObserver>[
        //   FirebaseAnalyticsObserver(analytics: analytics),
        // ],
      ),
    );
  }
}
