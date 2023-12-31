import 'package:flutter/material.dart';

class GenreItem extends StatelessWidget {
  const GenreItem({
    required this.title,
    super.key,
    this.backgroundColor = Colors.black12,
    this.textColor = Colors.black,
  });

  final Color? backgroundColor;

  final Color? textColor;

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
