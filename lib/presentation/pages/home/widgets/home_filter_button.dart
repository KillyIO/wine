import 'package:flutter/material.dart';

class HomeFilterButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final bool isActive;

  const HomeFilterButton({
    Key key,
    this.title,
    this.onPressed,
    this.isActive,
  }) : super(key: key);

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
