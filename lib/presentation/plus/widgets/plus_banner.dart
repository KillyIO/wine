import 'package:flutter/material.dart';
import 'package:wine/utils/constants/images.dart';
import 'package:wine/utils/responsive/plus_responsive.dart';

class PlusBanner extends StatelessWidget {
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
