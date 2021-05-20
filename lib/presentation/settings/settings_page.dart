import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wine/presentation/settings/settings_layout.dart';
import 'package:wine/utils/themes.dart';

/// @nodoc
class SettingsPage extends StatelessWidget {
  /// @nodoc
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: lightTheme,
      child: const SettingsLayout(),
    );
  }
}
