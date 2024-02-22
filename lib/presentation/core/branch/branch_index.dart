import 'package:flutter/material.dart';

class BranchIndex extends StatelessWidget {
  const BranchIndex({
    required this.index,
    super.key,
  });

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
