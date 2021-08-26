import 'package:flutter/material.dart';

class TestWidget extends StatelessWidget {
  const TestWidget({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TestWidget',
      home: Scaffold(
        body: Center(
          child: child,
        ),
      ),
    );
  }
}
