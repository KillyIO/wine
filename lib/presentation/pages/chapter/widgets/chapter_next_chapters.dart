import 'package:flutter/material.dart';

import 'package:wine/application/database/chapter/chapter_database_bloc.dart';
import 'package:wine/domain/models/chapter_minified.dart';
import 'package:wine/presentation/widgets/chapter_tile/wine_chapter_tile.dart';

class ChapterNextChapters extends StatelessWidget {
  final ChapterDatabaseState chapterDbState;

  const ChapterNextChapters({
    Key key,
    @required this.chapterDbState,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (chapterDbState.chapter.isNotEmpty) {
      return Column(
        children: <Widget>[
          Text(
            'CHAPTERS ${chapterDbState.chapter.index + 1}',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          if (chapterDbState.nextChaptersMinified.isNotEmpty) const SizedBox(height: 15),
          if (chapterDbState.nextChaptersMinified.isNotEmpty)
            for (ChapterMinified chapterMinified in chapterDbState.nextChaptersMinified)
              WINEChapterTile(
                coverUrl: chapterMinified.coverUrl,
                title: chapterMinified.title,
                authorUsername: chapterDbState.author.username,
                seriesTitle: chapterDbState.series.title,
                onPressed: () {},
              )
          else
            Column(
              children: <Widget>[
                Image.asset(
                  'assets/img/branch.png',
                  fit: BoxFit.contain,
                  width: MediaQuery.of(context).size.width / 1.5,
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: <InlineSpan>[
                      const TextSpan(text: 'No '),
                      TextSpan(
                        text: 'Chapters ${chapterDbState.chapter.index + 1}',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const TextSpan(text: ' found.'),
                    ],
                    style: const TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          const SizedBox(height: 75),
        ],
      );
    }
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.black26,
      ),
      height: 15.0,
      width: MediaQuery.of(context).size.width,
    );
  }
}
