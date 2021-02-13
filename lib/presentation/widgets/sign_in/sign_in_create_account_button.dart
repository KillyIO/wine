import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:wine/utils/palette.dart';

/// @nodoc
class SignInCreateAccountButton extends StatelessWidget {
  /// @nodoc
  const SignInCreateAccountButton({
    Key key,
    @required this.onPressed,
  }) : super(key: key);

  /// @nodoc
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'Not a member? ',
        style: const TextStyle(color: Colors.black, fontSize: 16.0),
        children: <TextSpan>[
          TextSpan(
            text: 'Create an account',
            recognizer: TapGestureRecognizer()..onTap = onPressed,
            style: const TextStyle(
              color: Palettes.pastelPink,
              decoration: TextDecoration.underline,
            ),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
