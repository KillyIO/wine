import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:wine/utils/extensions.dart';

class WINEChapterTile extends StatelessWidget {
  final String coverUrl;
  final String title;
  final String authorName;
  final String seriesTitle;
  final VoidCallback onPressed;

  const WINEChapterTile({
    Key key,
    @required this.coverUrl,
    @required this.title,
    @required this.authorName,
    @required this.seriesTitle,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: MediaQuery.of(context).size.height / 8,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 0.5,
              color: Colors.black12,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    TextOneLine(
                      title.isNotEmptyOrNull ? title : 'No title',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 2.5),
                    TextOneLine(
                      seriesTitle,
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 2.5),
                  child: TextOneLine(
                    authorName,
                    style: TextStyle(color: Colors.black38, fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
            CachedNetworkImage(
              imageUrl: coverUrl,
            ),
          ],
        ),
      ),
    );
  }
}
