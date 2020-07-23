import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class SeriesCover extends StatelessWidget {
  final String coverUrl;
  final String seriesUid;

  const SeriesCover({
    Key key,
    @required this.coverUrl,
    @required this.seriesUid,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.of(context).size;

    if (coverUrl != null) {
      return Hero(
        tag: seriesUid,
        child: CachedNetworkImage(
          fit: BoxFit.contain,
          imageUrl: coverUrl,
          height: mediaQuery.height / 6,
        ),
      );
    }
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.black26,
      ),
      height: mediaQuery.height / 6,
      width: mediaQuery.width / 4,
    );
  }
}
