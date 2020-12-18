import 'package:flutter/material.dart';

/// @nodoc
class WINEEditorTopTitle extends StatelessWidget {
  /// @nodoc
  const WINEEditorTopTitle({
    Key key,
    @required this.title,
  }) : super(key: key);

  /// @nodoc
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25.0),
      child: Center(
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.w400,
            letterSpacing: .5,
          ),
        ),
      ),
    );
  }
}
