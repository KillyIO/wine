import 'package:flutter/material.dart';

import 'package:wine/domain/models/chapter.dart';

class ChapterStoryView extends StatelessWidget {
  final double defaultAppBarHeight;
  final Chapter chapter;
  final VoidCallback onPressed;

  const ChapterStoryView({
    Key key,
    @required this.defaultAppBarHeight,
    @required this.chapter,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: onPressed,
      child: Column(
        children: <Widget>[
          SizedBox(height: defaultAppBarHeight + 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Text(
              'Chapter ${chapter.index}',
              style: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Text(
              chapter.title,
              style: TextStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.w400),
            ),
          ),
          const SizedBox(height: 75),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 15.0), child: Text(chapter.story)),
          // TODO add ad banner here
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
