import 'package:flutter/material.dart';

import 'package:wine/utils/extensions.dart';

class ChapterDraftTile extends StatelessWidget {
  final String coverUrl;
  final String title;
  final String authorName;
  final String seriesTitle;
  final VoidCallback onPressed;

  const ChapterDraftTile({
    Key key,
    this.coverUrl,
    this.title,
    this.authorName,
    this.seriesTitle,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(height: 10),
          Text(
            title.isNotEmptyOrNull ? title : 'No title',
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.black,
              fontSize: 17.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 10),
          RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: 'Author · ',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: authorName,
                ),
              ],
              style: TextStyle(
                color: Colors.black38,
                fontSize: 16.0,
              ),
            ),
          ),
          const SizedBox(height: 3.5),
          RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: 'Series · ',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: seriesTitle,
                ),
              ],
              style: TextStyle(
                color: Colors.black38,
                fontSize: 16.0,
              ),
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
