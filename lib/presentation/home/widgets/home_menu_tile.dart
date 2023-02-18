import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// @nodoc
class HomeMenuTile extends StatelessWidget {
  /// @nodoc
  const HomeMenuTile({
    required this.onPressed,
    required this.text,
    super.key,
  });

  /// @nodoc
  final VoidCallback onPressed;

  /// @nodoc
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 3),
        ),
      ),
      height: 30,
      child: MouseRegion(
        cursor: kIsWeb ? SystemMouseCursors.click : SystemMouseCursors.basic,
        child: GestureDetector(
          onTap: onPressed,
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w300,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
