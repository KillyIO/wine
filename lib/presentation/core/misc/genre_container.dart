import 'package:flutter/material.dart';

/// @nodoc
class GenreContainer extends StatelessWidget {
  /// @nodoc
  const GenreContainer({
    Key? key,
    required this.title,
  }) : super(key: key);

  /// @nodoc
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Text(
        title ?? '',
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
