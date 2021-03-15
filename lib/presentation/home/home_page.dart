import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wine/utils/themes.dart';

/// @nodoc
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return AnnotatedRegion<SystemUiOverlayStyle>(
      child: Container(),
      value: lightTheme,
    );
  }
}
