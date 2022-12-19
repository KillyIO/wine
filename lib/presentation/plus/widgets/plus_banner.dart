import 'package:flutter/material.dart';
import 'package:wine/utils/constants/images.dart';
import 'package:wine/utils/responsive/plus_responsive.dart';

/// @nodoc
class PlusBanner extends StatelessWidget {
  /// @nodoc
  const PlusBanner({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return Container(
      width: mediaQuery.width,
      height: mediaQuery.height / 3,
      color: Colors.transparent,
      child: Center(
        child: Image.asset(
          logoImage,
          width: getBannerSize(mediaQuery),
        ),
      ),
    );
  }
}