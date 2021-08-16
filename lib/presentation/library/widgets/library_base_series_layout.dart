import 'package:flutter/material.dart';
import 'package:wine/domain/series/series.dart';
import 'package:wine/utils/assets/images.dart';

/// @nodoc
class LibraryBaseSeriesLayout extends StatelessWidget {
  /// @nodoc
  const LibraryBaseSeriesLayout({
    Key? key,
    required this.isDraft,
    required this.seriesList,
  }) : super(key: key);

  /// @nodoc
  final bool isDraft;

  /// @nodoc
  final List<Series> seriesList;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    if (seriesList.isEmpty) {
      return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Image.asset(
              treeImage,
              fit: BoxFit.contain,
              width: mediaQuery.width * .35,
            ),
            const Text(
              'Nothing was found.',
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      );
    }
    return ScrollConfiguration(
      behavior: const ScrollBehavior(),
      child: ListView(
        children: <Widget>[],
      ),
    );
  }
}
