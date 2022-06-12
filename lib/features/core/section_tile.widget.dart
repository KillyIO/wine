import 'package:flutter/material.dart';

/// @nodoc
class SectionTile extends StatelessWidget {
  /// @nodoc
  const SectionTile({
    super.key,
    required this.title,
  });

  /// @nodoc
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
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
