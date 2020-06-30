import 'package:flutter/material.dart';

class VerifyEmailInstructions extends StatelessWidget {
  final String emailAddress;

  const VerifyEmailInstructions({
    Key key,
    @required this.emailAddress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: const TextStyle(color: Colors.black, fontSize: 16.0),
        children: <TextSpan>[
          const TextSpan(text: 'An email has been sent to your email address '),
          TextSpan(text: '$emailAddress.\n', style: TextStyle(fontWeight: FontWeight.bold)),
          const TextSpan(text: 'Please click on the link to verify your email and continue the registration process.'),
        ],
      ),
    );
  }
}
