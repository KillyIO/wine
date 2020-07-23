import 'package:flutter/material.dart';

class SeriesTitle extends StatelessWidget {
  final String title;

  const SeriesTitle({
    Key key,
    @required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (title != null) {
      return Text(
        title,
        style: TextStyle(
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
