import 'package:flutter/material.dart';

/// @nodoc
class HomeMenuTile extends StatelessWidget {
  /// @nodoc
  const HomeMenuTile({
    Key? key,
    required this.onPressed,
    required this.text,
  }) : super(key: key);

  /// @nodoc
  final VoidCallback onPressed;

  /// @nodoc
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 3.0),
        ),
      ),
      height: 30.0,
      child: GestureDetector(
        onTap: onPressed,
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    );
  }
}
