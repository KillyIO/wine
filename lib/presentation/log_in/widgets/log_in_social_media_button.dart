import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

/// @nodoc
class LogInSocialMediaButton extends StatelessWidget {
  /// @nodoc
  const LogInSocialMediaButton({
    Key? key,
    this.onPressed,
    required this.icon,
  }) : super(key: key);

  /// @nodoc
  final VoidCallback? onPressed;

  /// @nodoc
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: EdgeInsets.all(2.5.sp),
        shape: CircleBorder(
          side: BorderSide(
            width: .75.sp,
          ),
        ),
      ),
      child: Icon(
        icon,
        color: Colors.black,
        size: 10.sp,
      ),
    );
  }
}
