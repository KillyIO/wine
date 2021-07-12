import 'package:flutter/material.dart';

/// @nodoc
class SuccessDialog extends StatelessWidget {
  /// @nodoc
  const SuccessDialog({
    Key? key,
    this.buttonText,
    required this.message,
    required this.onPressed,
  }) : super(key: key);

  /// @nodoc
  final String? buttonText;

  /// @nodoc
  final String message;

  /// @nodoc
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 10.0,
      child: Container(),
    );
  }
}
