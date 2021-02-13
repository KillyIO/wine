import 'package:flutter/material.dart';

import 'package:wine/utils/palette.dart';

/// @nodoc
class WINEButton extends StatelessWidget {
  /// @nodoc
  const WINEButton({
    Key key,
    @required this.title,
    this.color = Palettes.pastelPink,
    @required this.onPressed,
    this.fontSize = 20.0,
    this.hasRoundedCorners = false,
  }) : super(key: key);

  /// @nodoc
  final String title;

  /// @nodoc
  final Color color;

  /// @nodoc
  final VoidCallback onPressed;

  /// @nodoc
  final double fontSize;

  /// @nodoc
  final bool hasRoundedCorners;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return SizedBox(
      height: 60.0,
      width: mediaQuery.width,
      child: FlatButton(
        color: color,
        onPressed: onPressed,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            hasRoundedCorners ? 10 : 0,
          ),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: fontSize,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
