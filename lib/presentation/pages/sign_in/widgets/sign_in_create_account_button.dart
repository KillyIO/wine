import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:wine/utils/palettes.dart';

class SignInCreateAccountButton extends StatelessWidget {
  final VoidCallback onPressed;

  const SignInCreateAccountButton({
    Key key,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'Not a member? ',
        style: TextStyle(
          color: Colors.black,
          fontSize: 16.0,
        ),
        children: <TextSpan>[
          TextSpan(
            text: 'Create an account',
            recognizer: TapGestureRecognizer()..onTap = onPressed,
            style: TextStyle(
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
