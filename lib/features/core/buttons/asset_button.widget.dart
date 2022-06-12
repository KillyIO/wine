import 'package:flutter/material.dart';

/// @nodoc
class AssetButton extends StatelessWidget {
  /// @nodoc
  const AssetButton({
    super.key,
    this.color = Colors.black,
    this.height = 24.0,
    this.width = 24.0,
    required this.imagePath,
    required this.onPressed,
  });

  /// @nodoc
  final Color color;

  /// @nodoc
  final double height;

  /// @nodoc
  final double width;

  /// @nodoc
  final String imagePath;

  /// @nodoc
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
