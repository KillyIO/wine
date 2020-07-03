import 'package:flutter/material.dart';

class WINEHorizontalNavbarButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final Color color;

  const WINEHorizontalNavbarButton({
    Key key,
    @required this.onPressed,
    @required this.title,
    @required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Text(title, style: TextStyle(color: color, fontWeight: FontWeight.w500)),
    );
  }
}
