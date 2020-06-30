import 'package:flutter/material.dart';

class SeriesSummary extends StatelessWidget {
  final String summary;

  const SeriesSummary({Key key, this.summary}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Summary', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600)),
              Text('Show more', style: TextStyle(color: Colors.black45, fontWeight: FontWeight.w500)),
            ],
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            summary,
            style: TextStyle(color: Colors.black54, fontSize: 16.0, fontWeight: FontWeight.w400),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
