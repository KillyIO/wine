import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart' hide Text;
import 'package:wine/presentation/core/labels/text_field_label.dart';
import 'package:wine/utils/constants/palette.dart';

/// @nodoc
class TypewriterQuill extends StatelessWidget {
  /// @nodoc
  const TypewriterQuill({
    Key? key,
    required this.controller,
    required this.errorMessage,
    required this.hintText,
    required this.label,
    required this.wordCount,
    required this.wordCountError,
  }) : super(key: key);

  /// @nodoc
  final QuillController controller;

  /// @nodoc
  final String errorMessage;

  /// @nodoc
  final String hintText;

  /// @nodoc
  final String label;

  /// @nodoc
  final String wordCount;

  /// @nodoc
  final bool wordCountError;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFieldLabel(title: label),
        Container(
          decoration: const BoxDecoration(
            border: Border.symmetric(
              horizontal: BorderSide(
                color: Colors.black26,
                width: 2,
              ),
            ),
          ),
          child: QuillToolbar.basic(
            controller: controller,
            showSmallButton: true,
            showColorButton: false,
            showBackgroundColorButton: false,
            showAlignmentButtons: true,
            showLink: false,
            multiRowsDisplay: false,
            showImageButton: false,
            showVideoButton: false,
            showCameraButton: false,
            toolbarIconAlignment: WrapAlignment.start,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Container(
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.black26,
                  width: 2,
                ),
              ),
            ),
            child: QuillEditor(
              autoFocus: false,
              controller: controller,
              focusNode: FocusNode(),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              placeholder: hintText,
              readOnly: false,
              scrollable: false,
              scrollController: ScrollController(),
              expands: false,
            ),
          ),
        ),
        if (wordCountError)
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 20),
            child: Text(
              errorMessage,
              style: TextStyle(
                fontSize: 12,
                color: wordCountError ? error : Colors.black,
              ),
            ),
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
