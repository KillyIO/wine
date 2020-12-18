import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:wine/application/database/chapter/chapter_database_bloc.dart';
import 'package:wine/domain/enums/editor_content_origin.dart';
import 'package:wine/presentation/utils/chapter/chapter_database_methods.dart';
import 'package:wine/presentation/routes/router.gr.dart';
import 'package:wine/presentation/widgets/wine_button.dart';

/// @nodoc
class ChapterWriteNextChapterButton extends StatelessWidget {
  /// @nodoc
  const ChapterWriteNextChapterButton({
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
    return Column(
      children: <Widget>[
        WINEButton(
          title: 'WRITE NEXT CHAPTER',
          onPressed: () async => ExtendedNavigator.root.push(
            Routes.chapterEditorPage,
            arguments: ChapterEditorPageArguments(
              editorContentOrigin: EditorContentOrigin.chapter,
              previousChapter: chapterDatabaseState.chapter,
            ),
          ),
          hasRoundedCorners: true,
        ),
        const SizedBox(height: 50),
      ],
    );
  }
}
