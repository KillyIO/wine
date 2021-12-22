import 'package:flutter/material.dart';

/// @nodoc
class SeriesAuthorUsername extends StatelessWidget {
  /// @nodoc
  const SeriesAuthorUsername({
    Key? key,
    required this.authorUsername,
  }) : super(key: key);

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
