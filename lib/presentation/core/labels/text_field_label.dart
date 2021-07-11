import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

/// @nodoc
class TextFieldLabel extends StatelessWidget {
  /// @nodoc
  const TextFieldLabel({
    Key? key,
    required this.title,
  }) : super(key: key);

  /// @nodoc
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      height: 4.5.h,
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Padding(
          padding: EdgeInsets.only(left: 2.3.w, bottom: 1.h),
          child: Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 5.2.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
