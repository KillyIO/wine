import 'package:flutter/material.dart';

import 'package:wine/utils/palettes.dart';

class WINEButton extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback onPressed;
  final double fontSize;
  final bool hasRoundedCorners;

  const WINEButton({
    Key key,
    this.title,
    this.color = Palettes.pastelPink,
    this.onPressed,
    this.fontSize = 20.0,
    this.hasRoundedCorners = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.of(context).size;

    return Container(
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
