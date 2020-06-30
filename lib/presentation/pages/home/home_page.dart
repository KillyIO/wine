import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wine/presentation/pages/home/widgets/home_layout.dart';
import 'package:wine/utils/themes.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: Themes.wineLightTheme(),
      child: HomeLayout(),
    );
  }
}
