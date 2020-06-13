import 'package:flutter/material.dart';

class WINEStatsButton extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final double iconSize;
  final String statsCount;
  final double statsSize;

  const WINEStatsButton({
    Key key,
    @required this.icon,
    @required this.iconColor,
    this.iconSize,
    @required this.statsCount,
    this.statsSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          color: iconColor,
          size: iconSize,
        ),
        const SizedBox(width: 5),
        Text(
          statsCount,
          style: TextStyle(
            color: iconColor,
            fontSize: statsSize,
          ),
        ),
      ],
    );
  }
}
