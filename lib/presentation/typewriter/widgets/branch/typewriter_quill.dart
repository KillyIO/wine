import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:wine/presentation/core/labels/text_field_label.dart';
import 'package:wine/utils/constants/palette.dart';

class TypewriterQuill extends StatelessWidget {
  const TypewriterQuill({
    required this.controller,
    required this.errorMessage,
    required this.hintText,
    required this.label,
    required this.wordCount,
    required this.wordCountError,
    super.key,
  });

  final QuillController controller;

  final String errorMessage;

  final String hintText;

  final String label;

  final String wordCount;

  final bool wordCountError;

  @override
  Widget build(BuildContext context) {
    return QuillProvider(
      configurations: QuillConfigurations(controller: controller),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFieldLabel(title: label),
          const DecoratedBox(
            decoration: BoxDecoration(
              border: Border.symmetric(
                horizontal: BorderSide(
                  color: Colors.black26,
                  width: 2,
                ),
              ),
            ),
            child: QuillToolbar(
              configurations: QuillToolbarConfigurations(
                showSmallButton: true,
                showColorButton: false,
                showBackgroundColorButton: false,
                showAlignmentButtons: true,
                showLink: false,
                multiRowsDisplay: false,
                toolbarIconAlignment: WrapAlignment.start,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: DecoratedBox(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black26,
                    width: 2,
                  ),
                ),
              ),
              child: QuillEditor(
                configurations: QuillEditorConfigurations(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  placeholder: hintText,
                  scrollable: false,
                ),
                focusNode: FocusNode(),
                scrollController: ScrollController(),
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
      ),
    );
  }
}
