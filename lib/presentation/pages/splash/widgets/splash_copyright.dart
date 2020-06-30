import 'package:flutter/material.dart';

class SplashCopyright extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(color: Colors.black54, height: 2.0, width: 25.0),
        const Padding(
          padding: EdgeInsets.only(top: 7.5, bottom: 2.5),
          child: Text('DESIGNED BY', style: TextStyle(color: Colors.black, fontSize: 9, fontWeight: FontWeight.w400)),
        ),
        const Text('SEBIGO', style: TextStyle(color: Colors.black, fontSize: 9, fontWeight: FontWeight.w400)),
      ],
    );
  }
}
