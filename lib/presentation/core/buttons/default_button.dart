import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    required this.color,
    required this.title,
    super.key,
    this.fontSize = 20,
    this.isProcessing = false,
    this.hasRoundedCorners = false,
    this.height = 50,
    this.onPressed,
    this.width = 100,
  });

  final Color color;

  final double? fontSize;

  final bool isProcessing;

  final bool hasRoundedCorners;

  final double? height;

  final String title;

  final VoidCallback? onPressed;

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
