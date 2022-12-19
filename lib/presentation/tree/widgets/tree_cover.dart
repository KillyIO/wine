import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

/// @nodoc
class TreeCover extends StatelessWidget {
  /// @nodoc
  const TreeCover({
    super.key,
    required this.coverURL,
    required this.treeUID,
  });

  /// @nodoc
  final String? coverURL;

  /// @nodoc
  final String treeUID;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    if (coverURL != null) {
      return Hero(
        tag: treeUID,
        child: CachedNetworkImage(
          fit: BoxFit.contain,
          imageUrl: coverURL!,
          height: mediaQuery.height * .16,
        ),
      );
    }
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.black26,
      ),
      height: mediaQuery.height * 16,
      width: mediaQuery.width * .25,
    );
  }
}
