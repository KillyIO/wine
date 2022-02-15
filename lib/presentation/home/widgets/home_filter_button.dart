import 'package:flutter/material.dart';

/// @nodoc
class HomeFilterButton extends StatelessWidget {
  /// @nodoc
  const HomeFilterButton({
    Key? key,
    required this.isActive,
    required this.onPressed,
    required this.title,
  }) : super(key: key);

  /// @nodoc
  final bool isActive;

  /// @nodoc
  final VoidCallback onPressed;

  /// @nodoc
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
