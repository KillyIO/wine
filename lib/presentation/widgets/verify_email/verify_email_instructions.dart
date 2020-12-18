import 'package:flutter/material.dart';

/// @nodoc
class VerifyEmailInstructions extends StatelessWidget {
  /// @nodoc
  const VerifyEmailInstructions({
    Key key,
    @required this.emailAddress,
  }) : super(key: key);

  /// @nodoc
  final String emailAddress;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: const TextStyle(color: Colors.black, fontSize: 16.0),
        children: <TextSpan>[
          const TextSpan(text: 'An email has been sent to your email address '),
          TextSpan(
            text: '$emailAddress.\n',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const TextSpan(
            text:
                // ignore: lines_longer_than_80_chars
                'Please click on the link to verify your email and continue the registration process.',
          ),
        ],
      ),
    );
  }
}
