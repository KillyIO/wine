import 'package:flutter/material.dart';

import 'package:wine/domain/models/chapter.dart';
import 'package:wine/presentation/widgets/chapter/chapter_index.dart';
import 'package:wine/presentation/widgets/chapter/chapter_story.dart';
import 'package:wine/presentation/widgets/chapter/chapter_title.dart';

/// @nodoc
class ChapterStoryLayout extends StatelessWidget {
  /// @nodoc
  const ChapterStoryLayout({
    Key key,
    @required this.defaultAppBarHeight,
    @required this.chapter,
  }) : super(key: key);

  /// @nodoc
  final double defaultAppBarHeight;

  /// @nodoc
  final Chapter chapter;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: defaultAppBarHeight + 50),
        ChapterIndex(index: chapter.index),
        const SizedBox(height: 10),
        ChapterTitle(title: chapter.title),
        const SizedBox(height: 75),
        ChapterStory(story: chapter.story),
        // TODO add ad banner here
      ],
    );
  }
}
