import 'package:flutter/material.dart';

class AppVersion extends StatelessWidget {
  final String appName;
  final String appVersion;

  AppVersion({this.appName, this.appVersion});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(bottom: 5.0),
          child: Text(
            '$appName v$appVersion',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15.0,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        Text(
          'Made in Montpellier',
          style: TextStyle(
            color: Colors.black,
            fontSize: 15.0,
            fontWeight: FontWeight.w300,
          ),
        )
      ],
    );
  }
}
