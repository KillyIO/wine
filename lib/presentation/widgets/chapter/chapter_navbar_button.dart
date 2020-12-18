import 'package:flutter/material.dart';

/// @nodoc
class ChapterNavbarButton extends StatelessWidget {
  /// @nodoc
  const ChapterNavbarButton({
    Key key,
    @required this.icon,
    this.iconColor = Colors.black,
    this.iconSize,
    this.disabledColor = Colors.black12,
    @required this.onPressed,
  }) : super(key: key);

  /// @nodoc
  final IconData icon;

  /// @nodoc
  final Color iconColor;

  /// @nodoc
  final double iconSize;

  /// @nodoc
  final Color disabledColor;

  /// @nodoc
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      icon: Icon(
        icon,
        color: onPressed == null ? disabledColor : iconColor,
        size: iconSize,
      ),
      onPressed: onPressed,
    );
  }
}
