import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

/// @nodoc
class DefaultButton extends StatelessWidget {
  /// @nodoc
  const DefaultButton({
    Key? key,
    required this.color,
    this.fontSize,
    this.isProcessing = false,
    this.hasRoundedCorners = false,
    this.height,
    required this.title,
    this.onPressed,
    this.width,
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
      height: height ?? 2.5.h,
      width: width ?? 100.w,
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
            ? SizedBox(
                height: 2.h,
                width: 2.h,
                child: const CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                ),
              )
            : Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: fontSize ?? 7.5.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
      ),
    );
  }
}
