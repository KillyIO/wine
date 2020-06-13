import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:wine/utils/palettes.dart';
import 'package:wine/presentation/widgets/wine_stats_button.dart';

class ChapterStats extends StatelessWidget {
  final int viewsCount;
  final int likesCount;
  final int bookmarksCount;

  const ChapterStats({
    Key key,
    @required this.viewsCount,
    @required this.likesCount,
    @required this.bookmarksCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(200.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          WINEStatsButton(
            icon: Icons.visibility,
            iconColor: Colors.black38,
            iconSize: 30.0,
            statsCount: NumberFormat.compact().format(viewsCount),
            statsSize: 18.0,
          ),
          // const SizedBox(width: 30),
          WINEStatsButton(
            icon: Icons.favorite,
            iconColor: Palettes.pastelPink,
            iconSize: 30.0,
            statsCount: NumberFormat.compact().format(likesCount),
            statsSize: 18.0,
          ),
          // const SizedBox(width: 30),
          WINEStatsButton(
            icon: Icons.bookmark,
            iconColor: Palettes.pastelYellow,
            iconSize: 30.0,
            statsCount: NumberFormat.compact().format(bookmarksCount),
            statsSize: 18.0,
          ),
        ],
      ),
    );
  }
}
