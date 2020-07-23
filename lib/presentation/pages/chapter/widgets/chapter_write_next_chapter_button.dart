import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:wine/application/database/chapter/chapter_database_bloc.dart';
import 'package:wine/presentation/pages/chapter/utils/chapter_database_methods.dart';
import 'package:wine/presentation/routes/router.gr.dart';
import 'package:wine/presentation/widgets/wine_button.dart';

class ChapterWriteNextChapterButton extends StatelessWidget {
  final ChapterDatabaseState chapterDbState;
  final ChapterDatabaseMethods chapterDbMethods;

  const ChapterWriteNextChapterButton({
    Key key,
    @required this.chapterDbState,
    @required this.chapterDbMethods,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        WINEButton(
          title: 'WRITE NEXT CHAPTER',
          onPressed: () async => ExtendedNavigator.root.push(
            Routes.newChapterPage,
            arguments: NewChapterPageArguments(
              previousChapter: chapterDbState.chapter,
            ),
          ),
          hasRoundedCorners: true,
        ),
        const SizedBox(height: 50),
      ],
    );
  }
}
