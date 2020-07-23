import 'package:flutter/material.dart';

class ChapterTitle extends StatelessWidget {
  final String title;

  const ChapterTitle({
    Key key,
    @required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (title != null) {
      return Center(
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
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
