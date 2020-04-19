import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Themes {
  static SystemUiOverlayStyle wineLightTheme() {
    return SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.transparent,
      systemNavigationBarIconBrightness: Brightness.dark,
    );
  }
}
