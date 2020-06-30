import 'dart:io';

import 'package:flutter/material.dart';

import 'package:wine/utils/methods.dart';

class WINEEditorCover extends StatelessWidget {
  const WINEEditorCover({Key key, @required this.coverUrl, @required this.onPressed}) : super(key: key);

  final String coverUrl;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.of(context).size;

    return Stack(
      children: <Widget>[
        Container(
          width: mediaQuery.width,
          height: 150.0,
          child: coverUrl.isEmpty
              ? Container()
              : Methods.isUrl(coverUrl)
                  ? Image.network(
                      coverUrl,
                      fit: BoxFit.fitWidth,
                    )
                  : Image.file(
                      File(coverUrl),
                      fit: BoxFit.fitWidth,
                    ),
        ),
        GestureDetector(
          onTap: onPressed,
          child: Container(
            width: mediaQuery.width,
            height: 150.0,
            color: Colors.white60,
            child: Icon(Icons.camera_alt, color: Colors.black38, size: 40.0),
          ),
        ),
      ],
    );
  }
}
