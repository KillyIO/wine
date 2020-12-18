import 'dart:io';

import 'package:flutter/material.dart';

import 'package:wine/utils/extensions.dart';

/// @nodoc
class WINEEditorCover extends StatelessWidget {
  /// @nodoc
  const WINEEditorCover({
    Key key,
    @required this.coverURL,
    @required this.onPressed,
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
          width: mediaQuery.width,
          height: 150.0,
          child: coverURL.isEmpty
              ? Container()
              : coverURL.isURL
                  ? Image.network(coverURL, fit: BoxFit.fitWidth)
                  : Image.file(File(coverURL), fit: BoxFit.fitWidth),
        ),
        GestureDetector(
          onTap: onPressed,
          child: Container(
            width: mediaQuery.width,
            height: 150.0,
            color: Colors.white60,
            child: const Icon(
              Icons.camera_alt,
              color: Colors.black38,
              size: 40.0,
            ),
          ),
        ),
      ],
    );
  }
}
