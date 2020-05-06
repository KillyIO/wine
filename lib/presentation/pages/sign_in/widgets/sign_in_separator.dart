import 'package:flutter/material.dart';

class SignInSeparator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Container(
          color: Colors.black26,
          height: 1.0,
          width: 100.0,
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
          height: 1.0,
          width: 100.0,
        ),
      ],
    );
  }
}
