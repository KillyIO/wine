import 'package:flutter/material.dart';

/// @nodoc
class ChapterTitle extends StatelessWidget {
  /// @nodoc
  const ChapterTitle({
    Key key,
    @required this.title,
  }) : super(key: key);

  /// @nodoc
  final String title;

  @override
  Widget build(BuildContext context) {
    if (title != null) {
      return Center(
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18.0,
            fontWeight: FontWeight.w400,
          ),
        ),
      );
    }
    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.black26,
        ),
        height: 15.0,
        width: MediaQuery.of(context).size.width / 2,
      ),
    );
  }
}
