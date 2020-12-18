import 'package:flutter/material.dart';

/// @nodoc
class WINEGenreContainer extends StatelessWidget {
  /// @nodoc
  const WINEGenreContainer(this.title);

  /// @nodoc
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
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
