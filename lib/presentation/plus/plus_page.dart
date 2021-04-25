import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wine/presentation/plus/plus_layout.dart';
import 'package:wine/utils/themes.dart';

/// @nodoc
class PlusPage extends StatelessWidget {
  /// @nodoc
  const PlusPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: lightTheme,
      child: const PlusLayout(),
    );
  }
}
