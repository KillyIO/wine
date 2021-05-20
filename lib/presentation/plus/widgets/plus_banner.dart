import 'package:flutter/material.dart';
import 'package:wine/utils/assets/images.dart';

/// @nodoc
class PlusBanner extends StatelessWidget {
  /// @nodoc
  const PlusBanner({Key? key}) : super(key: key);

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
          width: mediaQuery.width / 4,
        ),
      ),
    );
  }
}
