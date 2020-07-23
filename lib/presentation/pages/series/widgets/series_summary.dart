import 'package:flutter/material.dart';

class SeriesSummary extends StatelessWidget {
  final String summary;

  const SeriesSummary({
    Key key,
    @required this.summary,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (summary != null) {
      return Text(
        summary,
        style: TextStyle(
          color: Colors.black54,
          fontSize: 16.0,
          fontWeight: FontWeight.w400,
        ),
        maxLines: 3,
        overflow: TextOverflow.ellipsis,
      );
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.black26,
          ),
          height: 10.0,
          width: MediaQuery.of(context).size.width,
        ),
        const SizedBox(height: 5),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.black26,
          ),
          height: 10.0,
          width: MediaQuery.of(context).size.width,
        ),
        const SizedBox(height: 5),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.black26,
          ),
          height: 10.0,
          width: MediaQuery.of(context).size.width / 2,
        ),
      ],
    );
  }
}
