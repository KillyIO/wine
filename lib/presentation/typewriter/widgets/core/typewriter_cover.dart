import 'dart:io';

import 'package:flutter/material.dart';
import 'package:string_validator/string_validator.dart';

/// @nodoc
class TypewriterCover extends StatelessWidget {
  /// @nodoc
  const TypewriterCover({
    Key? key,
    required this.coverURL,
    required this.onPressed,
  }) : super(key: key);

  /// @nodoc
  final String coverURL;

  /// @nodoc
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return Stack(
      children: <Widget>[
        SizedBox(
          height: 150,
          width: mediaQuery.width,
          child: coverURL.isEmpty
              ? Container()
              : isURL(coverURL)
                  ? Image.network(coverURL, fit: BoxFit.fitWidth)
                  : Image.file(File(coverURL), fit: BoxFit.fitWidth),
        ),
        GestureDetector(
          onTap: onPressed,
          child: Container(
            width: mediaQuery.width,
            height: 150,
            color: Colors.white60,
            child: const Icon(
              Icons.camera_alt,
              color: Colors.black38,
              size: 40,
            ),
          ),
        )
      ],
    );
  }
}
