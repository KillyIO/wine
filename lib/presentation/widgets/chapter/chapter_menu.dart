import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import 'package:wine/application/database/chapter/chapter_database_bloc.dart';
import 'package:wine/presentation/utils/chapter/chapter_database_methods.dart';
import 'package:wine/presentation/widgets/chapter/chapter_additional_info.dart';
import 'package:wine/presentation/widgets/chapter/chapter_navbar.dart';
import 'package:wine/presentation/widgets/chapter/chapter_stats.dart';
import 'package:wine/utils/palettes.dart';

/// @nodoc
class ChapterMenu extends StatelessWidget {
  /// @nodoc
  const ChapterMenu({
    Key key,
    @required this.chapterDatabaseState,
    @required this.chapterDatabaseMethods,
  }) : super(key: key);

  /// @nodoc
  final ChapterDatabaseState chapterDatabaseState;

  /// @nodoc
  final ChapterDatabaseMethods chapterDatabaseMethods;

  @override
  Widget build(BuildContext context) {
    if (chapterDatabaseState.showNavbar) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 30.0),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                if (chapterDatabaseState.showChapterAdditionalInfo)
                  ChapterAdditionalInfo(
                    authorUsername: chapterDatabaseState.chapter.authorUsername,
                    copyrights: chapterDatabaseState.chapter.copyrights,
                    genre: chapterDatabaseState.chapter.genre,
                    genreOptional: chapterDatabaseState.chapter.genreOptional,
                  ),
                const SizedBox(height: 15),
                ChapterStats(
                  bookmarksCount: chapterDatabaseState.bookmarksCount,
                  likesCount: chapterDatabaseState.likesCount,
                  viewsCount: chapterDatabaseState.viewsCount,
                ),
                const SizedBox(height: 15),
                ChapterNavbar(
                  chapterDatabaseMethods: chapterDatabaseMethods,
                  isBookmarked: chapterDatabaseState.isBookmarked,
                  isLiked: chapterDatabaseState.isLiked,
                  previousChapterUID:
                      chapterDatabaseState.chapter.previousChapterUID,
                ),
                const SizedBox(height: 20),
                LinearPercentIndicator(
                  percent: chapterDatabaseState.percentProgress,
                  lineHeight: 30.0,
                  backgroundColor: Colors.black38,
                  progressColor: Palettes.pastelPink,
                  center: Text(
                    // ignore: lines_longer_than_80_chars
                    '${(chapterDatabaseState.percentProgress * 100.0).round()}%',
                    style: const TextStyle(
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
