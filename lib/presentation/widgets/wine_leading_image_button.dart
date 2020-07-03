import 'package:flutter/material.dart';

class WINELeadingImageButton extends StatelessWidget {
  final String imagePath;
  final VoidCallback onPressed;
  final Color color;

  const WINELeadingImageButton({
    Key key,
    @required this.imagePath,
    @required this.onPressed,
    this.color = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Image.asset(imagePath, fit: BoxFit.contain, color: color),
    );
  }
}
