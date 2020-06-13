import 'package:flutter/material.dart';

import 'package:wine/domain/models/chapter.dart';
import 'package:wine/presentation/widgets/wine_chapter_tile.dart';

class ChapterSameAuthor extends StatelessWidget {
  final Chapter chapter;
  final int index;
  final String authorName;
  final Map<String, String> languagesMap;

  const ChapterSameAuthor({
    Key key,
    @required this.chapter,
    @required this.index,
    @required this.authorName,
    @required this.languagesMap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (chapter.isNotEmptyOrNull) {
      return WINEChapterTile(
        title: chapter.title,
        authorName: authorName,
        seriesTitle: chapter.series.title,
      );
    } else {
      return Text("There's no chapter $index by $authorName for this series.");
    }
  }
}
