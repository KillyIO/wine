import 'package:flutter/material.dart';

/// @nodoc
class TypewriterGenres extends StatelessWidget {
  /// @nodoc
  const TypewriterGenres({
    required this.onPressed,
    required this.genres,
    super.key,
  });

  /// @nodoc
  final void Function(String) onPressed;

  /// @nodoc
  final List<String> genres;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        children: <Widget>[
          for (final genre in genres)
            DecoratedBox(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(),
                ),
              ),
              child: ListTile(
                title: Text(
                  genre,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                trailing: IconButton(
                  onPressed: () => onPressed(genre),
                  icon: const Icon(
                    Icons.delete,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
