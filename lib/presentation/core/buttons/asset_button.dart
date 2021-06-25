import 'package:flutter/material.dart';

/// @nodoc
class AssetButton extends StatelessWidget {
  /// @nodoc
  const AssetButton({
    Key? key,
    this.color = Colors.black,
    this.height = 20.0,
    this.width = 20.0,
    required this.imagePath,
    required this.onPressed,
  }) : super(key: key);

  /// @nodoc
  final Color color;

  /// @nodoc
  final double height;

  /// @nodoc
  final double width;

  /// @nodoc
  final String imagePath;

  /// @nodoc
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Image.asset(
        imagePath,
        color: color,
        fit: BoxFit.contain,
        height: height,
        width: width,
      ),
    );
  }
}
