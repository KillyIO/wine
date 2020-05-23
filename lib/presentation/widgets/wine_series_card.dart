import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class WINESeriesCard extends StatelessWidget {
  final String title;
  final String username;
  final String coverUrl;
  final int placeholderIndex;
  final List<String> placeholderUrls;
  final double height;
  final double width;
  final double titleFontSize;
  final double usernameFontSize;
  final VoidCallback onPressed;

  const WINESeriesCard({
    Key key,
    this.title,
    this.username,
    this.coverUrl,
    this.placeholderIndex,
    this.placeholderUrls,
    this.height = 100,
    this.width = 50,
    this.titleFontSize = 12,
    this.usernameFontSize = 11,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                  color: Color(0xFFF1F1F1),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: CachedNetworkImage(
                fit: BoxFit.contain,
                imageUrl: coverUrl != null && coverUrl.isNotEmpty
                    ? coverUrl
                    : placeholderUrls[placeholderIndex],
                progressIndicatorBuilder: (context, url, downloadProgress) =>
                    Center(
                  child: CircularProgressIndicator(
                    value: downloadProgress.progress,
                  ),
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
    );
  }
}
