import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:wine/application/typewriter/typewriter_series/typewriter_series_bloc.dart';

/// @nodoc
class TypewriterGenres extends StatelessWidget {
  /// @nodoc
  const TypewriterGenres({
    Key? key,
    required this.onPressed,
    required this.genres,
  }) : super(key: key);

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
            Container(
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
