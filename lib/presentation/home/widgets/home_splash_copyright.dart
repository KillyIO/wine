import 'package:flutter/material.dart';

class HomeSplashCopyright extends StatelessWidget {
  const HomeSplashCopyright({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          color: Colors.black54,
          height: 2,
          width: 25,
        ),
        const Padding(
          padding: EdgeInsets.only(top: 7.5, bottom: 2.5),
          child: Text(
            'DESIGNED BY',
            style: TextStyle(
              color: Colors.black,
              fontSize: 9,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        const Text(
          'WHISPERING STARS | FORKTALE',
          style: TextStyle(
            color: Colors.black,
            fontSize: 9,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
