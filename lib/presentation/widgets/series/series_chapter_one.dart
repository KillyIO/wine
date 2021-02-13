import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:wine/domain/models/chapter.dart';
import 'package:wine/presentation/routes/router.gr.dart';
import 'package:wine/presentation/widgets/chapter_tile/wine_chapter_tile.dart';
import 'package:wine/utils/palette.dart';

/// @nodoc
class SeriesChapterOne extends StatelessWidget {
  /// @nodoc
  const SeriesChapterOne({
    Key key,
    @required this.chapterOne,
    @required this.authorUsername,
    @required this.seriesTitle,
  }) : super(key: key);

  /// @nodoc
  final Chapter chapterOne;

  /// @nodoc
  final String authorUsername;

  /// @nodoc
  final String seriesTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
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
            coverURL: chapterOne.coverURL,
            title: chapterOne.title,
            authorUsername: authorUsername,
            onPressed: () => ExtendedNavigator.root.push(
              Routes.chapterPage,
              arguments: ChapterPageArguments(chapter: chapterOne),
            ),
          ),
        ],
      ),
    );
  }
}
