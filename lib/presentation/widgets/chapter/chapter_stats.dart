import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:models/models.dart';
import 'package:wine/utils/palette.dart';
import 'package:wine/presentation/widgets/wine_stats_button.dart';

/// @nodoc
class ChapterStats extends StatelessWidget {
  /// @nodoc
  const ChapterStats({
    Key key,
    @required this.viewsCount,
    @required this.likesCount,
    @required this.bookmarksCount,
  }) : super(key: key);

  /// @nodoc
  final Count viewsCount;

  /// @nodoc
  final Count likesCount;

  /// @nodoc
  final Count bookmarksCount;

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
            statsCount: NumberFormat.compact().format(viewsCount.count),
            statsSize: 18.0,
          ),
          WINEStatsButton(
            icon: Icons.favorite,
            iconColor: Palettes.pastelPink,
            iconSize: 30.0,
            statsCount: NumberFormat.compact().format(likesCount.count),
            statsSize: 18.0,
          ),
          WINEStatsButton(
            icon: Icons.bookmark,
            iconColor: Palettes.pastelYellow,
            iconSize: 30.0,
            statsCount: NumberFormat.compact().format(bookmarksCount.count),
            statsSize: 18.0,
          ),
        ],
      ),
    );
  }
}
