import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// @nodoc
ThemeData get lightTheme => ThemeData(
      appBarTheme: const AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
    );
