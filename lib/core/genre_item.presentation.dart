import 'package:flutter/material.dart';

/// @nodoc
class GenreItem extends StatelessWidget {
  /// @nodoc
  const GenreItem({
    super.key,
    this.backgroundColor = Colors.black12,
    this.textColor = Colors.black,
    required this.title,
  });

  /// @nodoc
  final Color? backgroundColor;

  /// @nodoc
  final Color? textColor;

  /// @nodoc
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Text(
        title ?? '',
        style: TextStyle(
          color: textColor,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
