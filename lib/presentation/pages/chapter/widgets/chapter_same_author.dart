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
    if (!chapter.isEmpty) {
      return WINEChapterTile(
        coverUrl: chapter.coverUrl,
        title: chapter.title,
        authorName: authorName,
        seriesTitle: chapter.series.title,
        onPressed: () {},
      );
    } else {
      return Column(
        children: <Widget>[
          Image.asset('assets/img/leaf.png', fit: BoxFit.contain, width: MediaQuery.of(context).size.width / 2.5),
          Text("There's no chapter $index by $authorName for this series."),
        ],
      );
    }
  }
}
