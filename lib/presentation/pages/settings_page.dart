import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wine/presentation/layouts/settings/settings_layout.dart';
import 'package:wine/utils/themes.dart';

/// @nodoc
class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: Themes.wineLightTheme(),
      child: SettingsLayout(),
    );
  }
}
