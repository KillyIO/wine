import 'package:flutter/material.dart';

class WINELeadingImageButton extends StatelessWidget {
  final String imagePath;
  final VoidCallback onPressed;
  final Color color;

  const WINELeadingImageButton({
    Key key,
    this.imagePath,
    this.onPressed,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Image.asset(
        imagePath,
        fit: BoxFit.contain,
        color: color ?? Colors.black,
      ),
    );
  }
}
