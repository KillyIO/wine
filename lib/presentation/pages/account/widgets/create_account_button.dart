import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:wine/utils/palettes.dart';

class CreateAccountButton extends StatelessWidget {
  final VoidCallback onPressed;

  const CreateAccountButton({
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
          fontSize: 15.0,
        ),
        children: <TextSpan>[
          TextSpan(
            text: 'Create an account',
            recognizer: TapGestureRecognizer()..onTap = onPressed,
            style: TextStyle(
              color: Palettes.strongCyan,
              decoration: TextDecoration.underline,
            ),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
