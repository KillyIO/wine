import 'package:flutter/material.dart';

/// @nodoc
class WINEAuthenticationTextField extends StatelessWidget {
  /// @nodoc
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

  /// @nodoc
  final TextEditingController controller;

  /// @nodoc
  final String hintText;

  /// @nodoc
  final ValueChanged<String> onChanged;

  /// @nodoc
  final String Function(String) validator;

  /// @nodoc
  final TextInputType keyboardType;

  /// @nodoc
  final bool autocorrect;

  /// @nodoc
  final bool obscureText;

  /// @nodoc
  final bool isSignInPage;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        contentPadding:
            EdgeInsets.symmetric(horizontal: isSignInPage ? 0.0 : 20.0),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black26,
            width: 2.0,
          ),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            width: 2.0,
          ),
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
