import 'package:flutter/material.dart';

class SeriesAuthorUsername extends StatelessWidget {
  final String authorUsername;

  const SeriesAuthorUsername({
    Key key,
    @required this.authorUsername,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (authorUsername != null) {
      return Text(
        authorUsername,
        style: TextStyle(
          color: Colors.black26,
          fontSize: 16.0,
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
