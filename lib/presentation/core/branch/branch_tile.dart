import 'package:flutter/material.dart';

/// @nodoc
class BranchTile extends StatelessWidget {
  /// @nodoc
  const BranchTile({
    Key? key,
    required this.coverURL,
    required this.onPressed,
    required this.title,
  }) : super(key: key);

  /// @nodoc
  final String coverURL;

  /// @nodoc
  final VoidCallback onPressed;

  /// @nodoc
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(),
    );
  }
}
