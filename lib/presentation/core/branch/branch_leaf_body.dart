import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';

class BranchLeafBody extends StatelessWidget {
  const BranchLeafBody({
    required this.leafController,
    super.key,
  });

  final QuillController? leafController;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    if (leafController != null) {
      return QuillProvider(
        configurations: QuillConfigurations(
          controller: leafController!,
        ),
        child: QuillEditor(
          configurations: const QuillEditorConfigurations(
            readOnly: true,
            showCursor: false,
          ),
          scrollController: ScrollController(),
          focusNode: FocusNode(),
        ),
      );
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.black26,
          ),
          height: 10,
          width: mediaQuery.width,
        ),
        const SizedBox(height: 10),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.black26,
          ),
          height: 10,
          width: mediaQuery.width,
        ),
        const SizedBox(height: 10),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.black26,
          ),
          height: 10,
          width: mediaQuery.width,
        ),
        const SizedBox(height: 10),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.black26,
          ),
          height: 10,
          width: mediaQuery.width * .5,
        ),
        const SizedBox(height: 10),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.black26,
          ),
          height: 10,
          width: mediaQuery.width * .25,
        ),
      ],
    );
  }
}
