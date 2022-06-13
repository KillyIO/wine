import 'package:flutter/material.dart';

/// @nodoc
class LogInSeparator extends StatelessWidget {
  /// @nodoc
  const LogInSeparator({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Container(
          color: Colors.black26,
          height: 1,
          width: 100,
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
          height: 1,
          width: 100,
        ),
      ],
    );
  }
}
