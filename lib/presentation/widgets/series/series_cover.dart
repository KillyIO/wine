import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

/// @nodoc
class SeriesCover extends StatelessWidget {
  /// @nodoc
  const SeriesCover({
    Key key,
    @required this.coverURL,
    @required this.seriesUID,
  }) : super(key: key);

  /// @nodoc
  final String coverURL;

  /// @nodoc
  final String seriesUID;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    if (coverURL != null) {
      return Hero(
        tag: seriesUID,
        child: CachedNetworkImage(
          fit: BoxFit.contain,
          imageUrl: coverURL,
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
