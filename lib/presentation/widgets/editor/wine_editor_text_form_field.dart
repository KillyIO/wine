import 'package:flutter/material.dart';

import 'package:wine/presentation/widgets/wine_text_field_label.dart';
import 'package:wine/utils/palette.dart';

/// @nodoc
class WINEEditorTextFormField extends StatelessWidget {
  /// @nodoc
  const WINEEditorTextFormField({
    Key key,
    @required this.label,
    @required this.controller,
    @required this.hintText,
    this.keyboardType = TextInputType.text,
    this.maxLines = 1,
    @required this.onChanged,
    @required this.validator,
    @required this.wordCount,
    @required this.wordCountError,
  }) : super(key: key);

  /// @nodoc
  final bool wordCountError;

  /// @nodoc
  final int maxLines;

  /// @nodoc
  final String Function(String) validator;

  /// @nodoc
  final String hintText;

  /// @nodoc
  final String label;

  /// @nodoc
  final String wordCount;

  /// @nodoc
  final TextEditingController controller;

  /// @nodoc
  final TextInputType keyboardType;

  /// @nodoc
  final void Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        WINETextFieldLabel(title: label),
        TextFormField(
          controller: controller,
          textCapitalization: TextCapitalization.sentences,
          decoration: InputDecoration(
            hintText: hintText,
            contentPadding: const EdgeInsets.symmetric(horizontal: 20.0),
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
            errorStyle: const TextStyle(
              color: Palettes.error,
            ),
          ),
          cursorColor: Colors.black,
          keyboardType: keyboardType,
          maxLines: maxLines,
          onChanged: onChanged,
          validator: validator,
        ),
        const SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            wordCount,
            style: TextStyle(
              color: wordCountError ? Palettes.error : Colors.black,
            ),
          ),
        ),
        const SizedBox(height: 25),
      ],
    );
  }
}
