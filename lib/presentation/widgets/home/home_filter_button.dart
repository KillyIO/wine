import 'package:flutter/material.dart';

/// @nodoc
class HomeFilterButton extends StatelessWidget {
  /// @nodoc
  const HomeFilterButton({
    Key key,
    this.title,
    this.onPressed,
    this.isActive,
  }) : super(key: key);

  /// @nodoc
  final String title;

  /// @nodoc
  final VoidCallback onPressed;

  /// @nodoc
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: GestureDetector(
        onTap: onPressed,
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            decoration: isActive ? TextDecoration.underline : null,
            fontSize: 17.0,
            fontWeight: isActive ? FontWeight.w500 : FontWeight.w300,
          ),
        ),
      ),
    );
  }
}
