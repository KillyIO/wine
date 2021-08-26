import 'package:flutter/material.dart';

/// @nodoc
class AuthenticationTextField extends StatelessWidget {
  /// @nodoc
  const AuthenticationTextField({
    Key? key,
    this.autocorrect = false,
    this.controller,
    required this.hintText,
    this.isLogInPage = false,
    this.keyboardType,
    this.obscureText = false,
    this.onChanged,
    required this.validator,
  }) : super(key: key);

  /// @nodoc
  final bool autocorrect;

  /// @nodoc
  final TextEditingController? controller;

  /// @nodoc
  final String hintText;

  /// @nodoc
  final bool isLogInPage;

  /// @nodoc
  final TextInputType? keyboardType;

  /// @nodoc
  final bool obscureText;

  /// @nodoc
  final void Function(String)? onChanged;

  /// @nodoc
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
