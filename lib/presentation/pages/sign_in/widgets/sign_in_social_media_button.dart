import 'package:flutter/material.dart';

class SignInSocialMediaButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;

  const SignInSocialMediaButton({
    Key key,
    this.onPressed,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onPressed,
      padding: const EdgeInsets.all(10.0),
      shape: const CircleBorder(side: BorderSide(width: 2.0)),
      child: Icon(icon, color: Colors.black, size: 30.0),
    );
  }
}
