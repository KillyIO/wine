import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutter/material.dart';

/// @nodoc
class WINEChapterTileSeriesTitle extends StatelessWidget {
  /// @nodoc
  const WINEChapterTileSeriesTitle({
    Key key,
    @required this.seriesTitle,
  }) : super(key: key);

  /// @nodoc
  final String seriesTitle;

  @override
  Widget build(BuildContext context) {
    if (seriesTitle != null) {
      return TextOneLine(
        seriesTitle,
        style: const TextStyle(
          fontSize: 15.0,
          fontWeight: FontWeight.w300,
        ),
      );
    }
    return Container();
  }
}
