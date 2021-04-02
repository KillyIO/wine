import 'package:flutter/material.dart';

class MainWidget extends StatelessWidget {
  const MainWidget({
    Key key,
    @required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MainWWidget',
      home: Scaffold(
        body: Center(
          child: child,
        ),
      ),
    );
  }
}
