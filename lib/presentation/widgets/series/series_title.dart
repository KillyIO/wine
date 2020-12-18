import 'package:flutter/material.dart';

/// @nodoc
class SeriesTitle extends StatelessWidget {
  /// @nodoc
  const SeriesTitle({
    Key key,
    @required this.title,
  }) : super(key: key);

  /// @nodoc
  final String title;

  @override
  Widget build(BuildContext context) {
    if (title != null) {
      return Text(
        title,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 17.0,
          fontWeight: FontWeight.w600,
        ),
      );
    }
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.black26,
      ),
      height: 10.0,
      width: MediaQuery.of(context).size.width / 2,
    );
  }
}
