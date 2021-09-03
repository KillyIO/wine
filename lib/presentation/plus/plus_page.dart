import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:wine/presentation/plus/plus_layout.dart';
import 'package:wine/utils/constants/core.dart';
import 'package:wine/utils/responsive/core_responsive.dart';
import 'package:wine/utils/themes.dart';

/// @nodoc
class PlusPage extends StatelessWidget {
  /// @nodoc
  const PlusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

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
              child: Container(color: Colors.black, height: 2),
            ),
            brightness: Brightness.light,
            centerTitle: true,
            elevation: 0,
            leading: !kIsWeb
                ? Padding(
                    padding: getAssetBackButtonPadding(mediaQuery),
                    child: IconButton(
                      key: const Key('plus_back'),
                      highlightColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      icon: const Icon(
                        Icons.keyboard_backspace_outlined,
                        color: Colors.black,
                      ),
                      onPressed: context.router.root.pop,
                      splashColor: Colors.transparent,
                    ),
                  )
                : Container(),
            leadingWidth: defaultToolbarItemWidth,
            title: const Text(
              'PLUS',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
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
