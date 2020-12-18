import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:wine/domain/enums/editor_content_origin.dart';
import 'package:wine/domain/models/chapter.dart';
import 'package:wine/presentation/routes/router.gr.dart';
import 'package:wine/presentation/widgets/chapter_tile/wine_chapter_tile.dart';
import 'package:wine/utils/assets.dart';

/// @nodoc
class AccountBaseChaptersLayout extends StatelessWidget {
  /// @nodoc
  const AccountBaseChaptersLayout({
    Key key,
    @required this.chapters,
    @required this.isDraft,
  }) : super(key: key);

  /// @nodoc
  final bool isDraft;

  /// @nodoc
  final List<Chapter> chapters;

  @override
  Widget build(BuildContext context) {
    if (chapters.isEmpty) {
      return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Image.asset(
              Assets.branchImage,
              fit: BoxFit.contain,
              width: MediaQuery.of(context).size.width / 1.5,
            ),
            const Text(
              'Nothing was found.',
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      );
    }
    return ScrollConfiguration(
      behavior: const ScrollBehavior(),
      child: ListView.builder(
        itemCount: chapters.length,
        itemBuilder: (BuildContext context, int index) {
          final chapter = chapters[index];

          return Padding(
            padding: EdgeInsets.only(top: index == 0 ? 10.0 : 0.0),
            child: WINEChapterTile(
              coverURL: chapter.coverURL,
              title: chapter.title,
              authorUsername: chapter.authorUsername,
              onPressed: () async => isDraft
                  ? ExtendedNavigator.root.push(
                      Routes.chapterEditorPage,
                      arguments: ChapterEditorPageArguments(
                        chapterDraft: chapter,
                        editorContentOrigin: EditorContentOrigin.account,
                      ),
                    )
                  : ExtendedNavigator.root.push(
                      Routes.chapterPage,
                      arguments: ChapterPageArguments(chapter: chapter),
                    ),
            ),
          );
        },
      ),
    );
  }
}
