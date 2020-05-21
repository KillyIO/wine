import 'package:flutter/material.dart';

class WINEHorizontalNavbarButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final Color color;

  const WINEHorizontalNavbarButton({
    Key key,
    this.onPressed,
    this.title,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Text(
        title,
        style: TextStyle(
          color: color,
        ),
      ),
    );
  }
}
