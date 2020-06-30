import 'package:flutter/material.dart';

import 'package:wine/application/database/chapter/chapter_database_bloc.dart';
import 'package:wine/domain/models/chapter.dart';
import 'package:wine/presentation/widgets/wine_chapter_tile.dart';

class ChapterNextChapters extends StatelessWidget {
  final ChapterDatabaseState chapterDbState;
  final Chapter currentChapter;
  final VoidCallback onPressed;

  const ChapterNextChapters({
    Key key,
    @required this.chapterDbState,
    @required this.currentChapter,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: onPressed,
      child: Column(
        children: <Widget>[
          // SECTION by the same author
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Text(
              'CHAPTER ${currentChapter.index + 1} BY THE SAME AUTHOR',
              style: const TextStyle(color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.w600),
            ),
          ),
          if (!chapterDbState.nextSameAuthorChapter.isEmpty)
            const SizedBox(height: 15),
          if (!chapterDbState.nextSameAuthorChapter.isEmpty)
            WINEChapterTile(
              coverUrl: currentChapter.coverUrl,
              title: currentChapter.title,
              authorName: currentChapter.author.username,
              seriesTitle: currentChapter.series.title,
              onPressed: () {},
            )
          else
            Column(
              children: <Widget>[
                Image.asset('assets/img/leaf.png', fit: BoxFit.contain, width: MediaQuery.of(context).size.width / 2.5),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: <InlineSpan>[
                      const TextSpan(text: "There's no "),
                      TextSpan(
                        text: 'Chapter ${currentChapter.index + 1}',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const TextSpan(text: ' by '),
                      TextSpan(text: currentChapter.author.username, style: TextStyle(fontWeight: FontWeight.bold)),
                      const TextSpan(text: ' for this series.'),
                    ],
                    style: const TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          // SECTION separator
          const SizedBox(height: 25),
          Center(
            child: Container(
              height: 3.0,
              width: 50.0,
              decoration: BoxDecoration(color: Colors.black38, borderRadius: BorderRadius.circular(20)),
            ),
          ),
          const SizedBox(height: 25),
          // SECTION By others
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Text(
              'CHAPTERS ${currentChapter.index + 1}',
              style: const TextStyle(color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.w600),
            ),
          ),
          if (chapterDbState.nextChapters.isNotEmpty)
            const SizedBox(height: 15),
          if (chapterDbState.nextChapters.isNotEmpty)
            for (Chapter chapter in chapterDbState.nextChapters)
              WINEChapterTile(
                coverUrl: chapter.coverUrl,
                title: chapter.title,
                authorName: chapter.author.username,
                seriesTitle: chapter.series.title,
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
                        text: 'Chapters ${currentChapter.index + 1}',
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
      ),
    );
  }
}
