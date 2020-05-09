import 'package:flutter/material.dart';
import 'package:wine/utils/palettes.dart';

class CreateAccountButton extends StatelessWidget {
  final VoidCallback onPressed;

  const CreateAccountButton({
    Key key,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      width: double.infinity,
      child: FlatButton(
        color: Palettes.strongCyan,
        onPressed: onPressed,
        child: Text(
          'CREATE AN ACCOUNT',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
