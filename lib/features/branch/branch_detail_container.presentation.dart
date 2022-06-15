import 'package:flutter/material.dart';

/// @nodoc
class BranchDetailContainer extends StatelessWidget {
  /// @nodoc
  const BranchDetailContainer({
    super.key,
    required this.child,
    required this.color,
  });

  /// @nodoc
  final Widget child;

  /// @nodoc
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