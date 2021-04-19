import 'package:flutter/material.dart';

/// @nodoc
class SplashDesigner extends StatelessWidget {
  /// @nodoc
  SplashDesigner({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(color: Colors.black54, height: 2.0, width: 25.0),
        const Padding(
          padding: EdgeInsets.only(top: 7.5, bottom: 2.5),
          child: Text(
            'DESIGNED BY',
            style: TextStyle(
              color: Colors.black,
              fontSize: 9.0,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        const Text(
          'KILLY.IO | WINE',
          style: TextStyle(
            color: Colors.black,
            fontSize: 9.0,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
