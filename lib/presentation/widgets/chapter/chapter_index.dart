import 'package:flutter/material.dart';

/// @nodoc
class ChapterIndex extends StatelessWidget {
  /// @nodoc
  const ChapterIndex({
    Key key,
    @required this.index,
  }) : super(key: key);

  /// @nodoc
  final int index;

  @override
  Widget build(BuildContext context) {
    if (index != null) {
      return Center(
        child: Text(
          'Chapter $index',
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.w600,
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
