import 'package:flutter/material.dart';

class WINEAuthenticationTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final ValueChanged<String> onChanged;
  final String Function(String) validator;
  final TextInputType keyboardType;
  final bool autocorrect;
  final bool obscureText;
  final bool isSignInPage;

  const WINEAuthenticationTextField({
    Key key,
    this.controller,
    @required this.hintText,
    this.onChanged,
    @required this.validator,
    this.keyboardType,
    this.autocorrect = false,
    this.obscureText = false,
    this.isSignInPage = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        contentPadding: EdgeInsets.symmetric(
          horizontal: isSignInPage ? 0.0 : 20.0,
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black26, width: 2.0),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(width: 2.0),
        ),
      ),
      cursorColor: Colors.black,
      keyboardType: keyboardType,
      autocorrect: autocorrect,
      obscureText: obscureText,
      onChanged: onChanged,
      validator: validator,
    );
  }
}
