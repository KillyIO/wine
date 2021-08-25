import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

/// @nodoc
class SignUpTOSAndPPButton extends StatelessWidget {
  /// @nodoc
  const SignUpTOSAndPPButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: const TextStyle(
          color: Colors.black,
          fontSize: 15,
          fontWeight: FontWeight.w300,
        ),
        children: <TextSpan>[
          const TextSpan(
            text: 'By creating an account, you agree and accept our',
          ),
          TextSpan(
            text: ' Terms of Service',
            style: const TextStyle(
              decoration: TextDecoration.underline,
              fontWeight: FontWeight.bold,
            ),
            // ignore: todo
            // TODO add navigation to terms of service
            recognizer: TapGestureRecognizer()..onTap = () {},
          ),
          const TextSpan(text: ' and '),
          TextSpan(
            text: 'Privacy Policy.',
            style: const TextStyle(
              decoration: TextDecoration.underline,
              fontWeight: FontWeight.bold,
            ),
            // ignore: todo
            // TODO add navigation to privacy policy
            recognizer: TapGestureRecognizer()..onTap = () {},
          ),
        ],
      ),
    );
  }
}
