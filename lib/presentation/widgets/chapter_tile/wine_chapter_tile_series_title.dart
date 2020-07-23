import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutter/material.dart';

class WINEChapterTileSeriesTitle extends StatelessWidget {
  final String seriesTitle;

  const WINEChapterTileSeriesTitle({
    Key key,
    @required this.seriesTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (seriesTitle != null) {
      return TextOneLine(
        seriesTitle,
        style: TextStyle(
          fontSize: 15.0,
          fontWeight: FontWeight.w300,
        ),
      );
    }
    return Container();
  }
}
