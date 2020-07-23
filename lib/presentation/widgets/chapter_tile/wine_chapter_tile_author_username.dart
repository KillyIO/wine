import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutter/material.dart';

class WINEChapterTileAuthorUsername extends StatelessWidget {
  final String authorUsername;

  const WINEChapterTileAuthorUsername({
    Key key,
    @required this.authorUsername,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (authorUsername != null) {
      return TextOneLine(
        authorUsername,
        style: TextStyle(
          color: Colors.black38,
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
