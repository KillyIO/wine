import 'package:flutter/material.dart';

class LogInSocialMediaButton extends StatelessWidget {
  const LogInSocialMediaButton({
    required this.icon,
    super.key,
    this.onPressed,
  });

  final VoidCallback? onPressed;

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
      child: Padding(
        padding: const EdgeInsets.all(2.5),
        child: Icon(
          icon,
          color: Colors.black,
          size: 30,
        ),
      ),
    );
  }
}
