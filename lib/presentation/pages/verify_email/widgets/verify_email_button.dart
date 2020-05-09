import 'package:flutter/material.dart';

class VerifyEmailButton extends StatelessWidget {
  final String title;
  final Color titleColor;
  final VoidCallback onPressed;
  final Color color;

  const VerifyEmailButton({
    Key key,
    this.title,
    this.titleColor,
    this.onPressed,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      width: double.infinity,
      child: FlatButton(
        color: color,
        onPressed: onPressed,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: titleColor,
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
