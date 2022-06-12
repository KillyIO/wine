import 'package:flutter/material.dart';

/// @nodoc
class BranchTitle extends StatelessWidget {
  /// @nodoc
  const BranchTitle({
    super.key,
    required this.title,
  });

  /// @nodoc
  final String? title;

  @override
  Widget build(BuildContext context) {
    if (title != null) {
      return Center(
        child: Text(
          title!,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
        ),
      );
    }
    return Container();
  }
}
