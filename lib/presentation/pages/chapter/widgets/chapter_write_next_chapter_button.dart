import 'package:flutter/material.dart';

import 'package:wine/application/database/chapter/chapter_database_bloc.dart';
import 'package:wine/domain/models/chapter.dart';
import 'package:wine/presentation/pages/chapter/utils/chapter_database_methods.dart';
import 'package:wine/presentation/widgets/wine_button.dart';
import 'package:wine/routes.dart';
import 'package:wine/utils/arguments.dart';
import 'package:wine/utils/constants.dart';

class ChapterWriteNextChapterButton extends StatelessWidget {
  final ChapterDatabaseState chapterDbState;
  final ChapterDatabaseMethods chapterDbMethods;
  final Chapter chapter;

  const ChapterWriteNextChapterButton({
    Key key,
    @required this.chapterDbState,
    @required this.chapterDbMethods,
    @required this.chapter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        if (chapterDbMethods.showWriteChapterButton(
            sessionUid: chapterDbState.session.uid,
            currentChapter: chapter,
            sameAuthorChapter: chapterDbState.nextSameAuthorChapter,
            nextChapters: chapterDbState.nextChapters))
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: WINEButton(
              title: 'WRITE NEXT CHAPTER',
              onPressed: () => sailor.navigate(
                Constants.newChapterRoute,
                args: NewChapterPageArgs(
                  previousChapter: chapter,
                  routeBack: Constants.chapterRoute,
                  predicateRoute: Constants.seriesRoute,
                ),
              ),
              hasRoundedCorners: true,
            ),
          ),
        if (chapterDbMethods.showWriteChapterButton(
            sessionUid: chapterDbState.session.uid,
            currentChapter: chapter,
            sameAuthorChapter: chapterDbState.nextSameAuthorChapter,
            nextChapters: chapterDbState.nextChapters))
          const SizedBox(height: 50),
      ],
    );
  }
}
