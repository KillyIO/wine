import 'dart:io';
import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:wine/utils/extensions.dart';

/// @nodoc
class WINESeriesCard extends StatelessWidget {
  /// @nodoc
  const WINESeriesCard({
    Key key,
    @required this.uid,
    @required this.title,
    @required this.coverURL,
    @required this.authorUsername,
    this.height = 100,
    this.width = 50,
    this.titleFontSize = 12,
    this.authorUsernameFontSize = 10,
    @required this.onPressed,
  }) : super(key: key);

  /// @nodoc
  final String uid;

  /// @nodoc
  final String title;

  /// @nodoc
  final String coverURL;

  /// @nodoc
  final String authorUsername;

  /// @nodoc
  final double height;

  /// @nodoc
  final double width;

  /// @nodoc
  final double titleFontSize;

  /// @nodoc
  final double authorUsernameFontSize;

  /// @nodoc
  final VoidCallback onPressed;

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
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(6.0),
                child: Hero(
                  tag: uid,
                  child: coverURL.isURL
                      ? CachedNetworkImage(
                          fit: BoxFit.contain,
                          imageUrl: coverURL,
                        )
                      : Image.file(File(coverURL)),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 1.0),
              child: TextOneLine(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: titleFontSize,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 1.0),
              child: TextOneLine(
                authorUsername,
                style: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: authorUsernameFontSize,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
