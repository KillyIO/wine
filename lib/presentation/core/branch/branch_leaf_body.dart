import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';

/// @nodoc
class BranchLeafBody extends StatelessWidget {
  /// @nodoc
  const BranchLeafBody({
    Key? key,
    required this.leafController,
  }) : super(key: key);

  /// @nodoc
  final QuillController? leafController;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    if (leafController != null) {
      return QuillEditor(
        autoFocus: false,
        controller: leafController!,
        expands: false,
        focusNode: FocusNode(),
        padding: EdgeInsets.zero,
        readOnly: true,
        scrollable: true,
        scrollController: ScrollController(),
        showCursor: false,
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
