import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:time/time.dart';

import 'package:wine/presentation/widgets/wine_leading_image_button.dart';

class ChapterAppBar extends StatelessWidget {
  final bool showNavbar;
  final double defaultAppBarHeight;

  const ChapterAppBar({
    Key key,
    @required this.showNavbar,
    @required this.defaultAppBarHeight,
  }) : super(key: key);

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
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            child: WINELeadingImageButton(
              imagePath: 'assets/img/back_button.png',
              onPressed: () async => ExtendedNavigator.root.pop(),
            ),
          ),
        ),
      ),
    );
  }
}
