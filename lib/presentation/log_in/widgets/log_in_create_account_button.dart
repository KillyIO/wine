import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:wine/utils/constants/palette.dart';

/// @nodoc
class LogInCreateAccountButton extends StatelessWidget {
  /// @nodoc
  const LogInCreateAccountButton({
    Key? key,
    this.onPressed,
  }) : super(key: key);

  /// @nodoc
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'Not a member? ',
        style: const TextStyle(
          color: Colors.black,
          fontSize: 16,
        ),
        children: <TextSpan>[
          TextSpan(
            text: 'Create an account',
            recognizer: TapGestureRecognizer()..onTap = onPressed,
            style: const TextStyle(
              color: pastelPink,
              decoration: TextDecoration.underline,
            ),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
