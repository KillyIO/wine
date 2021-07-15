import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// @nodoc
class LibraryPage extends StatelessWidget {
  /// @nodoc
  const LibraryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold();
  }
}
