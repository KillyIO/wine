import 'package:flutter/material.dart';

/// @nodoc
class BranchIndex extends StatelessWidget {
  /// @nodoc
  const BranchIndex({
    Key? key,
    required this.index,
  }) : super(key: key);

  /// @nodoc
  final int? index;

  @override
  Widget build(BuildContext context) {
    if (index != null) {
      return Center(
        child: Text(
          'Branch $index',
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      );
    }
    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.black26,
        ),
        height: 15,
        width: MediaQuery.of(context).size.width * .5,
      ),
    );
  }
}
