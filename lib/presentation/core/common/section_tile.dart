import 'package:flutter/material.dart';

/// @nodoc
class SectionTile extends StatelessWidget {
  /// @nodoc
  const SectionTile({
    required this.title,
    super.key,
  });

  /// @nodoc
  final String title;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.black12),
        ),
      ),
      child: ListTile(
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
