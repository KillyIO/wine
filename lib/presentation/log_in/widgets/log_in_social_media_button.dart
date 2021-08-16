import 'package:flutter/material.dart';

/// @nodoc
class LogInSocialMediaButton extends StatelessWidget {
  /// @nodoc
  const LogInSocialMediaButton({
    Key? key,
    this.onPressed,
    required this.icon,
  }) : super(key: key);

  /// @nodoc
  final VoidCallback? onPressed;

  /// @nodoc
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: const EdgeInsets.all(10),
        shape: const CircleBorder(
          side: BorderSide(
            width: 2,
          ),
        ),
      ),
      child: Icon(
        icon,
        color: Colors.black,
        size: 30,
      ),
    );
  }
}
