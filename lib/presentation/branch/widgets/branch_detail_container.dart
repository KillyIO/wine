import 'package:flutter/material.dart';

class BranchDetailContainer extends StatelessWidget {
  const BranchDetailContainer({
    required this.child,
    required this.color,
    super.key,
  });

  final Widget child;

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: color,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: child,
    );
  }
}
