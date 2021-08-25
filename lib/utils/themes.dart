import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// @nodoc
SystemUiOverlayStyle get lightTheme => SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.transparent,
      systemNavigationBarIconBrightness: Brightness.dark,
    );
