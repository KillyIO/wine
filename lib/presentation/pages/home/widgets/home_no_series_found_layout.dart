import 'package:flutter/material.dart';

class HomeNoSeriesFoundLayout extends StatelessWidget {
  final String language;
  final String time;
  final bool isTopSeries;

  const HomeNoSeriesFoundLayout({
    Key key,
    this.language,
    this.time,
    this.isTopSeries = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Image.asset('assets/img/tree.png', fit: BoxFit.contain, width: MediaQuery.of(context).size.width / 1.25),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: <InlineSpan>[
                const TextSpan(text: 'No series in '),
                TextSpan(text: language),
                TextSpan(text: isTopSeries ? ' were updated ' : ' were created '),
                TextSpan(text: time),
              ],
              style: const TextStyle(color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            "Try looking for series 'this week'",
            style: TextStyle(color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
