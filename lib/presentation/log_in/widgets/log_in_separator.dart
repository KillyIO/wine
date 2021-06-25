import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

/// @nodoc
class LogInSeparator extends StatelessWidget {
  /// @nodoc
  const LogInSeparator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Container(
          color: Colors.black26,
          height: .075.h,
          width: 12.w,
        ),
        const Text(
          'OR SIGN IN WITH',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w300,
          ),
        ),
        Container(
          color: Colors.black26,
          height: .075.h,
          width: 12.w,
        ),
      ],
    );
  }
}
