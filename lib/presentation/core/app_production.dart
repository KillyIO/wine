import 'package:flutter/material.dart';
import 'package:wine/flavors.dart';

/// @nodoc
class AppProduction extends StatelessWidget {
  // /// @nodoc
  // final FirebaseAnalytics analytics = FirebaseAnalytics();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: F.title,
      builder: ExtendedNavigator.builder<WINERouter>(
        router: WINERouter(),
        // observers: <NavigatorObserver>[
        //   FirebaseAnalyticsObserver(analytics: analytics),
        // ],
      ),
    );
  }
}
