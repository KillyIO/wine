import 'package:auto_route/auto_route.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:flutter/material.dart';
import 'package:wine/presentation/routes/router.gr.dart';

class ProductionApp extends StatelessWidget {
  final FirebaseAnalytics analytics = FirebaseAnalytics();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WINE',
      builder: ExtendedNavigator<Router>(
        router: Router(),
        observers: <NavigatorObserver>[
          FirebaseAnalyticsObserver(analytics: analytics),
        ],
      ),
    );
  }
}
