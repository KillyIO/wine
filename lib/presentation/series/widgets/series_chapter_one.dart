import 'package:flutter/material.dart';
import 'package:wine/utils/constants/palette.dart';

/// @nodoc
class SeriesChapterOne extends StatelessWidget {
  /// @nodoc
  const SeriesChapterOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: Text(
            'CHAPTER ONE',
            style: TextStyle(
              color: pastelPink,
              fontSize: 16,
              fontWeight: FontWeight.w800,
              letterSpacing: 1,
            ),
          ),
        ),
        // TODO(SSebigo): display ChapterTile if chapter one found
        // else display button to write first chapter
        Container(),
      ],
    );
  }
}
