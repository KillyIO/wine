import 'package:flutter/material.dart';
import 'package:wine/application/database/chapter/chapter_database_bloc.dart';
import 'package:wine/presentation/widgets/chapter_tile/wine_chapter_tile.dart';
import 'package:wine/utils/assets.dart';

/// @nodoc
class ChapterSameAuthor extends StatelessWidget {
  /// @nodoc
  const ChapterSameAuthor({
    Key key,
    @required this.chapterDatabaseState,
  }) : super(key: key);

  /// @nodoc
  final ChapterDatabaseState chapterDatabaseState;

  @override
  Widget build(BuildContext context) {
    if (chapterDatabaseState.chapter.isNotEmpty &&
        chapterDatabaseState.chapter.isNotEmpty) {
      return Column(
        children: <Widget>[
          Text(
            // ignore: lines_longer_than_80_chars
            'CHAPTER ${chapterDatabaseState.chapter.index + 1} BY THE SAME AUTHOR',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          if (chapterDatabaseState.nextSameAuthorChapter.isNotEmpty)
            const SizedBox(height: 15),
          if (chapterDatabaseState.nextSameAuthorChapter.isNotEmpty)
            WINEChapterTile(
              coverURL: chapterDatabaseState.chapter.coverURL,
              title: chapterDatabaseState.chapter.title,
              authorUsername: chapterDatabaseState.chapter.authorUsername,
              onPressed: () {},
            )
          else
            Column(
              children: <Widget>[
                Image.asset(
                  Assets.leafImage,
                  fit: BoxFit.contain,
                  width: MediaQuery.of(context).size.width / 2.5,
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: <InlineSpan>[
                      const TextSpan(text: "There's no "),
                      TextSpan(
                        // ignore: lines_longer_than_80_chars
                        text:
                            'Chapter ${chapterDatabaseState.chapter.index + 1}',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const TextSpan(text: ' by '),
                      TextSpan(
                        text: chapterDatabaseState.chapter.authorUsername,
                        style: const TextStyle(fontWeight: FontWeight.bold),
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
