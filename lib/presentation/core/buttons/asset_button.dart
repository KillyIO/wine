import 'package:flutter/material.dart';

class AssetButton extends StatelessWidget {
  const AssetButton({
    required this.imagePath,
    required this.onPressed,
    super.key,
    this.color = Colors.black,
    this.height = 24.0,
    this.width = 24.0,
  });

  final Color color;

  final double height;

  final double width;

  final String imagePath;

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Image.asset(
          imagePath,
          color: color,
          fit: BoxFit.contain,
          height: height,
          width: width,
        ),
      ),
    );
  }
}
