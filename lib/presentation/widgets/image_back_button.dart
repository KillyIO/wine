import 'package:flutter/material.dart';

class ImageBackButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Color color;

  const ImageBackButton({
    Key key,
    this.onPressed,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Image.asset(
        'assets/img/back_button.png',
        fit: BoxFit.contain,
        color: color,
      ),
    );
  }
}
