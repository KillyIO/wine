import 'package:flutter/material.dart';

class EmailVerificationReminderDialog extends StatelessWidget {
  final VoidCallback onPressed;

  EmailVerificationReminderDialog({@required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 25.0),
              child: Text(
                'A verification email has been sent to your email address.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w400,
                  height: 1.5,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              child: FlatButton(
                child: Text(
                  'GOT IT!',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                highlightColor: Colors.transparent,
                onPressed: onPressed,
                splashColor: Colors.transparent,
              ),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: Colors.black12),
                ),
              ),
              width: double.infinity,
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
      ),
      elevation: 10.0,
    );
  }
}
