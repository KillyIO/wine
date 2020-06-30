import 'package:flutter/material.dart';

class WINEEditorTopTitle extends StatelessWidget {
  final String title;

  const WINEEditorTopTitle({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25.0),
      child: Center(
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.w400, letterSpacing: .5),
        ),
      ),
    );
  }
}
