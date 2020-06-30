import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:time/time.dart';
import 'package:wine/domain/models/hive/session.dart';
import 'package:wine/utils/palettes.dart';

class AccountDetails extends StatelessWidget {
  final Session session;

  const AccountDetails({Key key, this.session}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.of(context).size;

    return AnimatedContainer(
      width: mediaQuery.width,
      height: mediaQuery.height / 2.5,
      color: Palettes.pastelBlue,
      duration: 200.milliseconds,
      child: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(image: ExactAssetImage('assets/img/avatar-icon.png'), fit: BoxFit.cover),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: Container(decoration: BoxDecoration(color: Colors.white.withOpacity(0.0))),
            ),
          ),
        ],
      ),
    );
  }
}
