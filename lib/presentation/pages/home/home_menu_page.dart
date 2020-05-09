import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wine/presentation/pages/home/widgets/home_menu_layout.dart';
import 'package:wine/utils/themes.dart';

class HomeMenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: Themes.wineLightTheme(),
      child: HomeMenuLayout(),
    );
  }
}
