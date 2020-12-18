import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:wine/utils/extensions.dart';

/// @nodoc
class WINEChapterTileCover extends StatelessWidget {
  /// @nodoc
  const WINEChapterTileCover({
    Key key,
    @required this.coverURL,
  }) : super(key: key);

  /// @nodoc
  final String coverURL;

  @override
  Widget build(BuildContext context) {
    /// @nodoc
    final mediaQuery = MediaQuery.of(context).size;

    if (coverURL != null) {
      if (coverURL.isURL) {
        return CachedNetworkImage(imageUrl: coverURL);
      }
      return Image.file(File(coverURL));
    }
    return Container(
      color: Colors.black26,
      height: mediaQuery.height / 8,
      width: mediaQuery.width / 5,
    );
  }
}
