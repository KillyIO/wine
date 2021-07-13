import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:sizer/sizer.dart';
import 'package:wine/utils/constants/palette.dart';

/// @nodoc
class ErrorDialog extends StatelessWidget {
  /// @nodoc
  const ErrorDialog({
    Key? key,
    this.buttonText,
    required this.messages,
    required this.onPressed,
  }) : super(key: key);

  /// @nodoc
  final String? buttonText;

  /// @nodoc
  final List<String> messages;

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
                LineIcons.exclamationCircle,
                color: error,
                size: 25.sp,
              ),
            ),
            Text(
              "SOMETHING'S WRONG!",
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
              child: Column(
                children: <Widget>[
                  for (var i = 0; i < messages.length; i++)
                    Padding(
                      padding: EdgeInsets.only(
                        bottom: i == messages.length - 1 ? 0 : .75.h,
                      ),
                      child: Text(
                        messages[i],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 7.sp,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                ],
              ),
            ),
            Container(
              color: error,
              width: double.infinity,
              child: TextButton(
                onPressed: onPressed,
                child: Text(
                  buttonText ?? 'DISMISS',
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
