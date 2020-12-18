import 'package:flutter/material.dart';

/// @nodoc
class WINETextFieldLabel extends StatelessWidget {
  /// @nodoc
  const WINETextFieldLabel({
    Key key,
    @required this.title,
  }) : super(key: key);

  /// @nodoc
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      height: 50.0,
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, bottom: 10.0),
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 13.0,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
