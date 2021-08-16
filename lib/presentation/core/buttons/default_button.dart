import 'package:flutter/material.dart';

/// @nodoc
class DefaultButton extends StatelessWidget {
  /// @nodoc
  const DefaultButton({
    Key? key,
    required this.color,
    this.fontSize = 20,
    this.isProcessing = false,
    this.hasRoundedCorners = false,
    this.height = 50,
    required this.title,
    this.onPressed,
    this.width = 100,
  }) : super(key: key);

  /// @nodoc
  final Color color;

  /// @nodoc
  final double? fontSize;

  /// @nodoc
  final bool isProcessing;

  /// @nodoc
  final bool hasRoundedCorners;

  /// @nodoc
  final double? height;

  /// @nodoc
  final String title;

  /// @nodoc
  final VoidCallback? onPressed;

  /// @nodoc
  final double? width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              hasRoundedCorners ? 10 : 0.0,
            ),
          ),
        ),
        child: isProcessing
            ? const SizedBox(
                height: 25,
                width: 25,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                ),
              )
            : Text(
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
