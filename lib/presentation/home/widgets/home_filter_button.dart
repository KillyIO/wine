import 'package:flutter/material.dart';

class HomeFilterButton extends StatelessWidget {
  const HomeFilterButton({
    required this.isActive,
    required this.onPressed,
    required this.title,
    super.key,
  });

  final bool isActive;

  final VoidCallback onPressed;

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: GestureDetector(
        onTap: onPressed,
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            decoration: isActive ? TextDecoration.underline : null,
            fontSize: 17,
            fontWeight: isActive ? FontWeight.w500 : FontWeight.w300,
          ),
        ),
      ),
    );
  }
}
