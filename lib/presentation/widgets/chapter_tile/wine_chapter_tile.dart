import 'package:flutter/material.dart';
import 'package:wine/presentation/widgets/chapter_tile/wine_chapter_tile_author_username.dart';
import 'package:wine/presentation/widgets/chapter_tile/wine_chapter_tile_cover.dart';
import 'package:wine/presentation/widgets/chapter_tile/wine_chapter_tile_series_title.dart';
import 'package:wine/presentation/widgets/chapter_tile/wine_chapter_tile_title.dart';

class WINEChapterTile extends StatelessWidget {
  final String coverUrl;
  final String title;
  final String authorUsername;
  final String seriesTitle;
  final VoidCallback onPressed;

  const WINEChapterTile({
    Key key,
    @required this.coverUrl,
    @required this.title,
    @required this.authorUsername,
    this.seriesTitle,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: coverUrl != null && title != null && authorUsername != null ? onPressed : null,
      child: Container(
        height: mediaQuery.height / 8,
        decoration: BoxDecoration(
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
                      const SizedBox(height: 2.5),
                      WINEChapterTileSeriesTitle(seriesTitle: seriesTitle),
                    ],
                  ),
                ),
                SizedBox(
                  width: mediaQuery.width / 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      WINEChapterTileAuthorUsername(authorUsername: authorUsername),
                      const SizedBox(height: 5),
                    ],
                  ),
                ),
              ],
            ),
            WINEChapterTileCover(coverUrl: coverUrl),
          ],
        ),
      ),
    );
  }
}
