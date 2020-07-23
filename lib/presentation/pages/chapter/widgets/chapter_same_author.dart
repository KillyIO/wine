import 'package:flutter/material.dart';
import 'package:wine/application/database/chapter/chapter_database_bloc.dart';
import 'package:wine/presentation/widgets/chapter_tile/wine_chapter_tile.dart';

class ChapterSameAuthor extends StatelessWidget {
  final ChapterDatabaseState chapterDbState;

  const ChapterSameAuthor({
    Key key,
    @required this.chapterDbState,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (chapterDbState.chapter.isNotEmpty && chapterDbState.chapter.isNotEmpty) {
      return Column(
        children: <Widget>[
          Text(
            'CHAPTER ${chapterDbState.chapter.index + 1} BY THE SAME AUTHOR',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          if (chapterDbState.nextSameAuthorChapterMinified.isNotEmpty) const SizedBox(height: 15),
          if (chapterDbState.nextSameAuthorChapterMinified.isNotEmpty)
            WINEChapterTile(
              coverUrl: chapterDbState.chapter.coverUrl,
              title: chapterDbState.chapter.title,
              authorUsername: chapterDbState.author.username,
              seriesTitle: chapterDbState.series.title,
              onPressed: () {},
            )
          else
            Column(
              children: <Widget>[
                Image.asset(
                  'assets/img/leaf.png',
                  fit: BoxFit.contain,
                  width: MediaQuery.of(context).size.width / 2.5,
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: <InlineSpan>[
                      const TextSpan(text: "There's no "),
                      TextSpan(
                        text: 'Chapter ${chapterDbState.chapter.index + 1}',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const TextSpan(text: ' by '),
                      TextSpan(
                        text: chapterDbState.author.username,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const TextSpan(text: ' for this series.'),
                    ],
                    style: const TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
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
