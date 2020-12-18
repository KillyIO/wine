import 'package:flutter/material.dart';
import 'package:wine/presentation/widgets/chapter_tile/wine_chapter_tile_author_username.dart';
import 'package:wine/presentation/widgets/chapter_tile/wine_chapter_tile_cover.dart';
import 'package:wine/presentation/widgets/chapter_tile/wine_chapter_tile_title.dart';

/// @nodoc
class WINEChapterTile extends StatelessWidget {
  /// @nodoc
  const WINEChapterTile({
    Key key,
    @required this.coverURL,
    @required this.title,
    @required this.authorUsername,
    @required this.onPressed,
  }) : super(key: key);

  /// @nodoc
  final String coverURL;

  /// @nodoc
  final String title;

  /// @nodoc
  final String authorUsername;

  /// @nodoc
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: coverURL != null && title != null && authorUsername != null
          ? onPressed
          : null,
      child: Container(
        height: mediaQuery.height / 8,
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 0.5,
              color: Colors.black12,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  width: mediaQuery.width / 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const SizedBox(height: 2.5),
                      WINEChapterTileTitle(title: title),
                    ],
                  ),
                ),
                SizedBox(
                  width: mediaQuery.width / 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      WINEChapterTileAuthorUsername(
                        authorUsername: authorUsername,
                      ),
                      const SizedBox(height: 5),
                    ],
                  ),
                ),
              ],
            ),
            WINEChapterTileCover(coverURL: coverURL),
          ],
        ),
      ),
    );
  }
}
