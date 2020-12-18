import 'package:flutter/material.dart';

/// @nodoc
class WINEHorizontalNavbarButton extends StatelessWidget {
  /// @nodoc
  const WINEHorizontalNavbarButton({
    Key key,
    @required this.onPressed,
    @required this.title,
    @required this.color,
  }) : super(key: key);

  /// @nodoc
  final VoidCallback onPressed;

  /// @nodoc
  final String title;

  /// @nodoc
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Text(
        title,
        style: TextStyle(
          color: color,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
