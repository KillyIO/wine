import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:wine/domain/models/chapter_minified.dart';
import 'package:wine/presentation/routes/router.gr.dart';
import 'package:wine/presentation/widgets/chapter_tile/wine_chapter_tile.dart';
import 'package:wine/utils/palettes.dart';

class SeriesChapterOne extends StatelessWidget {
  final ChapterMinified chapterMinified;
  final String authorUsername;
  final String seriesTitle;

  const SeriesChapterOne({
    Key key,
    @required this.chapterMinified,
    @required this.authorUsername,
    @required this.seriesTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'CHAPTER ONE',
            style: TextStyle(
              color: Palettes.pastelPink,
              fontSize: 16.0,
              fontWeight: FontWeight.w800,
              letterSpacing: 1.0,
            ),
          ),
          const SizedBox(height: 20),
          WINEChapterTile(
            coverUrl: chapterMinified.coverUrl,
            title: chapterMinified.title,
            authorUsername: authorUsername,
            seriesTitle: seriesTitle,
            onPressed: () => ExtendedNavigator.root.push(
              Routes.chapterPage,
              arguments: ChapterPageArguments(chapterUid: chapterMinified.uid),
            ),
          ),
        ],
      ),
    );
  }
}
