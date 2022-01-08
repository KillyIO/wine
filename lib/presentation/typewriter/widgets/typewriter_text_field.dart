import 'package:flutter/material.dart';

import 'package:wine/presentation/core/labels/text_field_label.dart';
import 'package:wine/utils/constants/palette.dart';

/// @nodoc
class TypewriterTextField extends StatelessWidget {
  /// @nodoc
  const TypewriterTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    this.keyboardType = TextInputType.text,
    required this.label,
    this.maxLines = 1,
    required this.onChanged,
    required this.validator,
    required this.wordCount,
    required this.wordCountError,
  }) : super(key: key);

  /// @nodoc
  final TextEditingController controller;

  /// @nodoc
  final String hintText;

  /// @nodoc
  final TextInputType keyboardType;

  /// @nodoc
  final String label;

  /// @nodoc
  final int maxLines;

  /// @nodoc
  final void Function(String) onChanged;

  /// @nodoc
  final String? Function(String?)? validator;

  /// @nodoc
  final String wordCount;

  /// @nodoc
  final bool wordCountError;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        TextFieldLabel(title: label),
        TextFormField(
          controller: controller,
          textCapitalization: TextCapitalization.sentences,
          decoration: InputDecoration(
            hintText: hintText,
            contentPadding: const EdgeInsets.symmetric(horizontal: 20),
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black26,
                width: 2,
              ),
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(width: 2),
            ),
            errorStyle: const TextStyle(color: error),
          ),
          cursorColor: Colors.black,
          keyboardType: keyboardType,
          maxLines: maxLines,
          onChanged: onChanged,
          validator: validator,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5, left: 20, bottom: 25),
          child: Text(
            wordCount,
            style: TextStyle(
              color: wordCountError ? error : Colors.black,
            ),
          ),
        )
      ],
    );
  }
}
