import 'package:flutter/material.dart';

import 'package:wine/presentation/core/labels/text_field_label.dart';
import 'package:wine/utils/constants/palette.dart';

class TypewriterTextField extends StatelessWidget {
  const TypewriterTextField({
    required this.hintText,
    required this.label,
    required this.onChanged,
    required this.validator,
    required this.wordCount,
    required this.wordCountError,
    super.key,
    this.controller,
    this.keyboardType = TextInputType.text,
    this.maxLines = 1,
  });

  final TextEditingController? controller;

  final String hintText;

  final TextInputType keyboardType;

  final String label;

  final int? maxLines;

  final void Function(String) onChanged;

  final String? Function(String?)? validator;

  final String wordCount;

  final bool wordCountError;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        TextFieldLabel(title: label),
        TextFormField(
          controller: controller,
          focusNode: FocusNode(),
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
          textCapitalization: TextCapitalization.sentences,
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
        ),
      ],
    );
  }
}
