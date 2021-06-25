import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:wine/presentation/core/buttons/asset_button.dart';
import 'package:wine/presentation/plus/plus_layout.dart';
import 'package:wine/utils/assets/icons.dart';
import 'package:wine/utils/themes.dart';

/// @nodoc
class PlusPage extends StatelessWidget {
  /// @nodoc
  const PlusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: lightTheme,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(41.5),
          child: AppBar(
            backgroundColor: Colors.transparent,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(0.0),
              child: Container(color: Colors.black, height: 2.0),
            ),
            brightness: Brightness.light,
            centerTitle: true,
            elevation: 0.0,
            leading: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 5.0,
              ),
              child: AssetButton(
                key: const Key('plus_layout_back_button'),
                imagePath: backIcon,
                onPressed: () => context.router.pop(),
              ),
            ),
            title: const Text(
              'PLUS',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ),
        body: const PlusLayout(),
      ),
    );
  }
}
