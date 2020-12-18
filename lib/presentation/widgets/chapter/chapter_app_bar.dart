import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:time/time.dart';

import 'package:wine/presentation/widgets/wine_leading_image_button.dart';
import 'package:wine/utils/assets.dart';

/// @nodoc
class ChapterAppBar extends StatelessWidget {
  /// @nodoc
  const ChapterAppBar({
    Key key,
    @required this.showNavbar,
    @required this.defaultAppBarHeight,
  }) : super(key: key);

  /// @nodoc
  final bool showNavbar;

  /// @nodoc
  final double defaultAppBarHeight;

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(41.5),
      child: AnimatedContainer(
        duration: 200.milliseconds,
        height: showNavbar ? defaultAppBarHeight : 0.0,
        child: AppBar(
          backgroundColor: Colors.white,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(0.0),
            child: Container(height: 2.0, color: Colors.white),
          ),
          brightness: Brightness.light,
          elevation: 0.0,
          leading: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            child: WINELeadingImageButton(
              imagePath: Assets.backIcon,
              onPressed: () async => ExtendedNavigator.root.pop(),
            ),
          ),
        ),
      ),
    );
  }
}
