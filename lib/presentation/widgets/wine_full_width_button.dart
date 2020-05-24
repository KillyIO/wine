import 'package:flutter/material.dart';
import 'package:wine/utils/palettes.dart';

class WINEFullWidthButton extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback onPressed;
  final double fontSize;

  const WINEFullWidthButton({
    Key key,
    this.title,
    this.color = Palettes.pastelPink,
    this.onPressed,
    this.fontSize = 20.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      width: double.infinity,
      child: FlatButton(
        color: color,
        onPressed: onPressed,
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
