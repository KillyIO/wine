import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wine/utils/themes.dart';

/// @nodoc
class OnboardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return AnnotatedRegion<SystemUiOverlayStyle>(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: Text('Onboarding'),
        ),
      ),
      value: lightTheme,
    );
  }
}
