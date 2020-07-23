import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class WINEChapterTileCover extends StatelessWidget {
  final String coverUrl;

  const WINEChapterTileCover({
    Key key,
    @required this.coverUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.of(context).size;

    if (coverUrl != null) {
      return CachedNetworkImage(imageUrl: coverUrl);
    }
    return Container(
      color: Colors.black26,
      height: mediaQuery.height / 8,
      width: mediaQuery.width / 5,
    );
  }
}
