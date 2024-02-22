import 'package:flutter/material.dart';

class HorizontalPageViewNavbarButton extends StatelessWidget {
  const HorizontalPageViewNavbarButton({
    required this.color,
    required this.onPressed,
    required this.title,
    super.key,
  });

  final Color color;

  final VoidCallback onPressed;

  final String title;

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
