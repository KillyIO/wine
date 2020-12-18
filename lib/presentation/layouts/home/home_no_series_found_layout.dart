import 'package:flutter/material.dart';
import 'package:wine/utils/assets.dart';

/// @nodoc
class HomeNoSeriesFoundLayout extends StatelessWidget {
  /// @nodoc
  const HomeNoSeriesFoundLayout({
    Key key,
    @required this.time,
  }) : super(key: key);

  /// @nodoc
  final String time;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Image.asset(
            Assets.treeImage,
            fit: BoxFit.contain,
            width: MediaQuery.of(context).size.width / 1.25,
          ),
          Text(
            'Nothing found $time',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            "Try looking for series 'this week'",
            style: TextStyle(
              color: Colors.black,
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }
}
