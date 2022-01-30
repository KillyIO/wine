import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';

/// @nodoc
class BranchLeaf extends StatelessWidget {
  /// @nodoc
  const BranchLeaf({
    Key? key,
    required this.leafController,
  }) : super(key: key);

  /// @nodoc
  final QuillController? leafController;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    if (leafController != null) {
      return QuillEditor.basic(
        controller: leafController!,
        readOnly: true,
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
