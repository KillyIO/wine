import 'package:flutter/material.dart';

/// @nodoc
class TreeAuthorUsername extends StatelessWidget {
  /// @nodoc
  const TreeAuthorUsername({
    super.key,
    required this.authorUsername,
  });

  /// @nodoc
  final String? authorUsername;

  @override
  Widget build(BuildContext context) {
    if (authorUsername != null) {
      return Text(
        authorUsername!,
        style: const TextStyle(
          color: Colors.black26,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      );
    }
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.black26,
      ),
      height: 10,
      width: MediaQuery.of(context).size.width * .5,
    );
  }
}
