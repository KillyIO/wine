import 'package:flutter/material.dart';

class AuthenticationTextField extends StatelessWidget {
  const AuthenticationTextField({
    required this.hintText,
    required this.validator,
    super.key,
    this.autocorrect = false,
    this.controller,
    this.isLogInPage = false,
    this.keyboardType,
    this.obscureText = false,
    this.onChanged,
  });

  final bool autocorrect;

  final TextEditingController? controller;

  final String hintText;

  final bool isLogInPage;

  final TextInputType? keyboardType;

  final bool obscureText;

  final void Function(String)? onChanged;

  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autocorrect: autocorrect,
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        contentPadding:
            EdgeInsets.symmetric(horizontal: isLogInPage ? 0.0 : 20),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black26,
            width: 2,
          ),
        ),
        errorBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
            width: 1.5,
          ),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            width: 2,
          ),
        ),
      ),
      keyboardType: keyboardType,
      obscureText: obscureText,
      onChanged: onChanged,
      validator: validator,
    );
  }
}
