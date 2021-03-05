import 'package:flutter/material.dart';
import 'package:wine/flavors.dart';

/// @nodoc
class AppDevelopment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: F.title,
      builder: ExtendedNavigator.builder<WINERouter>(router: WINERouter()),
    );
  }
}
