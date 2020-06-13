import 'package:flutter/material.dart';

class ChapterNavbarButton extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final double iconSize;
  final Color disabledColor;
  final VoidCallback onPressed;

  const ChapterNavbarButton({
    Key key,
    @required this.icon,
    this.iconColor = Colors.black,
    this.iconSize,
    this.disabledColor = Colors.black12,
    @required this.onPressed,
  }) : super(key: key);

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
