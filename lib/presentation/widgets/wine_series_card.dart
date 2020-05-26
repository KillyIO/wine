import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:wine/utils/extensions.dart';

class WINESeriesCard extends StatelessWidget {
  final String uid;
  final String title;
  final String username;
  final String coverUrl;
  final String placeholderUrl;
  final double height;
  final double width;
  final double titleFontSize;
  final double usernameFontSize;
  final VoidCallback onPressed;

  const WINESeriesCard({
    Key key,
    this.uid,
    this.title,
    this.username,
    this.coverUrl,
    this.placeholderUrl,
    this.height = 100,
    this.width = 50,
    this.titleFontSize = 12,
    this.usernameFontSize = 11,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: SizedBox(
        height: height,
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: const <BoxShadow>[
                  BoxShadow(
                    color: Colors.black12,
                    spreadRadius: 3,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Hero(
                  tag: uid,
                  child: CachedNetworkImage(
                    fit: BoxFit.contain,
                    imageUrl: coverUrl.isNotEmptyOrNull
                        ? coverUrl
                        : placeholderUrl,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Text(
                title,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: titleFontSize,
                ),
              ),
            ),
            const SizedBox(height: 2.5),
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Text(
                username,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.black26,
                  fontSize: usernameFontSize,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
