import 'package:flutter/material.dart';

/// @nodoc
class WINEStatsButton extends StatelessWidget {
  /// @nodoc
  const WINEStatsButton({
    Key key,
    @required this.icon,
    @required this.iconColor,
    this.iconSize,
    @required this.statsCount,
    this.statsSize,
  }) : super(key: key);

  /// @nodoc
  final IconData icon;

  /// @nodoc
  final Color iconColor;

  /// @nodoc
  final double iconSize;

  /// @nodoc
  final String statsCount;

  /// @nodoc
  final double statsSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(icon, color: iconColor, size: iconSize),
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
