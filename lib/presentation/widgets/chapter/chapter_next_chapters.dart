import 'package:flutter/material.dart';

import 'package:wine/application/database/chapter/chapter_database_bloc.dart';
import 'package:wine/domain/models/chapter.dart';
import 'package:wine/presentation/widgets/chapter_tile/wine_chapter_tile.dart';
import 'package:wine/utils/assets.dart';

/// @nodoc
class ChapterNextChapters extends StatelessWidget {
  /// @nodoc
  const ChapterNextChapters({
    Key key,
    @required this.chapterDatabaseState,
  }) : super(key: key);

  /// @nodoc
  final ChapterDatabaseState chapterDatabaseState;

  @override
  Widget build(BuildContext context) {
    if (chapterDatabaseState.chapter.isNotEmpty) {
      return Column(
        children: <Widget>[
          Text(
            'CHAPTERS ${chapterDatabaseState.chapter.index + 1}',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          if (chapterDatabaseState.nextChapters.isNotEmpty)
            const SizedBox(height: 15),
          if (chapterDatabaseState.nextChapters.isNotEmpty)
            for (Chapter chapter in chapterDatabaseState.nextChapters)
              WINEChapterTile(
                coverURL: chapter.coverURL,
                title: chapter.title,
                authorUsername: chapterDatabaseState.chapter.authorUsername,
                onPressed: () {},
              )
          else
            Column(
              children: <Widget>[
                Image.asset(
                  Assets.branchImage,
                  fit: BoxFit.contain,
                  width: MediaQuery.of(context).size.width / 1.5,
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: <InlineSpan>[
                      const TextSpan(text: 'No '),
                      TextSpan(
                        text:
                            // ignore: lines_longer_than_80_chars
                            'Chapters ${chapterDatabaseState.chapter.index + 1}',
                        style: const TextStyle(fontWeight: FontWeight.bold),
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
