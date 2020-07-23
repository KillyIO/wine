import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutter/material.dart';

class WINEChapterTileTitle extends StatelessWidget {
  final String title;

  const WINEChapterTileTitle({
    Key key,
    @required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (title != null) {
      return TextOneLine(
        title.isNotEmpty ? title : 'No title',
        style: TextStyle(
          color: Colors.black,
          fontSize: 18.0,
          fontWeight: FontWeight.w400,
        ),
      );
    }
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.black26,
      ),
      height: 10.0,
      width: MediaQuery.of(context).size.width / 2,
    );
  }
}
