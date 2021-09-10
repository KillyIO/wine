import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:wine/presentation/core/buttons/asset_button.dart';
import 'package:wine/utils/assets/icons.dart';
import 'package:wine/utils/constants/core.dart';
import 'package:wine/utils/themes.dart';

/// @nodoc
class SettingsSeriesPage extends StatelessWidget {
  /// @nodoc
  const SettingsSeriesPage({Key? key}) : super(key: key);

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
          preferredSize: const Size.fromHeight(defaultAppBarHeight),
          child: AppBar(
            backgroundColor: Colors.transparent,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(0),
              child: Container(
                color: Colors.black,
                height: 2,
              ),
            ),
            centerTitle: true,
            elevation: 0,
            leading: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5,
              ),
              child: AssetButton(
                imagePath: backIcon,
                onPressed: context.router.pop,
              ),
            ),
            title: const Text(
              'SERIES',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ),
        body: Container(),
      ),
    );
  }
}
