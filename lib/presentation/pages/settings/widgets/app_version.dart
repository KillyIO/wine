import 'package:flutter/material.dart';

class AppVersion extends StatelessWidget {
  final String appName;
  final String appVersion;

  const AppVersion({
    Key key,
    this.appName,
    this.appVersion,
  }) : super(key: key);

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
        ),
      ],
    );
  }
}
