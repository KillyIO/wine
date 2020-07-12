import 'package:flutter/material.dart';

class WINELeadingImageButton extends StatelessWidget {
  final Color color;
  final double height;
  final double width;
  final String imagePath;
  final VoidCallback onPressed;

  const WINELeadingImageButton({
    Key key,
    this.color = Colors.black,
    this.height = 20.0,
    this.width = 20.0,
    @required this.imagePath,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Image.asset(imagePath, color: color, fit: BoxFit.contain, height: height, width: width),
    );
  }
}
