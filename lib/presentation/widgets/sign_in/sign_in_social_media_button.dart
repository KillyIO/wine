import 'package:flutter/material.dart';

/// @nodoc
class SignInSocialMediaButton extends StatelessWidget {
  /// @nodoc
  const SignInSocialMediaButton({
    Key key,
    this.onPressed,
    this.icon,
  }) : super(key: key);

  /// @nodoc
  final VoidCallback onPressed;

  /// @nodoc
  final IconData icon;

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
