import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import 'package:wine/application/database/chapter/chapter_database_bloc.dart';
import 'package:wine/presentation/pages/chapter/utils/chapter_database_methods.dart';
import 'package:wine/presentation/pages/chapter/widgets/chapter_additional_info.dart';
import 'package:wine/presentation/pages/chapter/widgets/chapter_navbar.dart';
import 'package:wine/presentation/pages/chapter/widgets/chapter_stats.dart';
import 'package:wine/utils/palettes.dart';

class ChapterMenu extends StatelessWidget {
  final ChapterDatabaseState chapterDbState;
  final ChapterDatabaseMethods chapterDbMethods;

  const ChapterMenu({
    Key key,
    @required this.chapterDbState,
    @required this.chapterDbMethods,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (chapterDbState.showNavbar) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 30.0),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                if (chapterDbState.showChapterAdditionalInfo)
                  ChapterAdditionalInfo(
                    authorUsername: chapterDbState.author.username,
                    copyrights: chapterDbState.copyrightsMap[chapterDbState.chapter.copyrights],
                    genre: chapterDbState.genresMap[chapterDbState.chapter.genre],
                    genreOptional: chapterDbState.genresMap[chapterDbState.chapter.genreOptional],
                    seriesName: chapterDbState.series.title,
                  ),
                const SizedBox(height: 15),
                ChapterStats(
                  bookmarksCount: chapterDbState.bookmarksCount,
                  likesCount: chapterDbState.likesCount,
                  viewsCount: chapterDbState.viewsCount,
                ),
                const SizedBox(height: 15),
                ChapterNavbar(
                  chapterDbMethods: chapterDbMethods,
                  isBookmarked: chapterDbState.isBookmarked,
                  isLiked: chapterDbState.isLiked,
                  previousChapterUid: chapterDbState.chapter.previousChapterUid,
                ),
                const SizedBox(height: 20),
                LinearPercentIndicator(
                  percent: chapterDbState.percentProgress,
                  lineHeight: 30.0,
                  backgroundColor: Colors.black38,
                  progressColor: Palettes.pastelPink,
                  center: Text(
                    '${(chapterDbState.percentProgress * 100.0).round()}%',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
    return Container();
  }
}