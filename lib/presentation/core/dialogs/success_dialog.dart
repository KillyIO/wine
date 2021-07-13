import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:sizer/sizer.dart';
import 'package:wine/utils/constants/palette.dart';

/// @nodoc
class SuccessDialog extends StatelessWidget {
  /// @nodoc
  const SuccessDialog({
    Key? key,
    this.buttonText,
    required this.message,
    required this.onPressed,
  }) : super(key: key);

  /// @nodoc
  final String? buttonText;

  /// @nodoc
  final String message;

  /// @nodoc
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 10.0,
      child: Container(
        color: Colors.white,
        width: 50.w,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: 1.25.h),
              child: Icon(
                LineIcons.checkCircle,
                color: success,
                size: 25.sp,
              ),
            ),
            Text(
              'SUCCESS!',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 7.5.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                bottom: 2.h,
                left: 2.w,
                right: 2.w,
                top: 1.h,
              ),
              child: Text(
                message,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 7.sp,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            Container(
              color: success,
              width: double.infinity,
              child: TextButton(
                onPressed: onPressed,
                child: Text(
                  buttonText ?? 'CONTINUE',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 8.5.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
