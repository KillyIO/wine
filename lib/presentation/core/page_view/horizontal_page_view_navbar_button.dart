import 'package:flutter/material.dart';

/// @nodoc
class HorizontalPageViewNavbarButton extends StatelessWidget {
  /// @nodoc
  HorizontalPageViewNavbarButton({
    Key? key,
    required this.color,
    required this.onPressed,
    required this.title,
  }) : super(key: key);

  /// @nodoc
  final Color color;

  /// @nodoc
  final VoidCallback onPressed;

  /// @nodoc
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
