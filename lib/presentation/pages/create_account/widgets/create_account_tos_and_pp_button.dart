import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CreateAccountTOSAndPPButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: TextStyle(color: Colors.black, fontSize: 15.0, fontWeight: FontWeight.w300),
        children: <TextSpan>[
          const TextSpan(text: 'By creating an account, you agree and accept our'),
          TextSpan(
            text: ' Terms of Service',
            style: TextStyle(decoration: TextDecoration.underline, fontWeight: FontWeight.bold),
            recognizer: TapGestureRecognizer()..onTap = () {},
          ),
          const TextSpan(text: ' and '),
          TextSpan(
            text: 'Privacy Policy.',
            style: TextStyle(decoration: TextDecoration.underline, fontWeight: FontWeight.bold),
            recognizer: TapGestureRecognizer()..onTap = () {},
          ),
        ],
      ),
    );
  }
}