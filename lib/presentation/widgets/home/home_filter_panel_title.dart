import 'package:flutter/material.dart';

/// @nodoc
class HomeFilterPanelTitle extends StatelessWidget {
  /// @nodoc
  const HomeFilterPanelTitle({
    Key key,
    this.title,
  }) : super(key: key);

  /// @nodoc
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Container(
        height: 50.0,
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Colors.black12, width: 2.0),
          ),
        ),
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    );
  }
}
