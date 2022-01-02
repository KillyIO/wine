import 'dart:io';

import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:string_validator/string_validator.dart';

/// @nodoc
class SeriesCard extends StatelessWidget {
  /// @nodoc
  const SeriesCard({
    Key? key,
    // required this.authorUsername,
    // this.authorUsernameFontSize = 10,
    required this.coverURL,
    required this.onPressed,
    required this.title,
    this.titleFontSize = 12,
    required this.uid,
  }) : super(key: key);

  // /// @nodoc
  // final String authorUsername;

  // /// @nodoc
  // final double authorUsernameFontSize;

  /// @nodoc
  final String coverURL;

  /// @nodoc
  final VoidCallback onPressed;

  /// @nodoc
  final String title;

  /// @nodoc
  final double titleFontSize;

  /// @nodoc
  final String uid;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
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
                borderRadius: BorderRadius.circular(6),
                child: Hero(
                  tag: uid,
                  child: isURL(coverURL)
                      ? CachedNetworkImage(
                          fit: BoxFit.contain,
                          imageUrl: coverURL,
                        )
                      : Image.file(File(coverURL)),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 1),
            child: TextOneLine(
              title,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: titleFontSize,
              ),
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 1),
          //   child: TextOneLine(
          //     'Some text',
          //     style: TextStyle(
          //       color: Colors.black38,
          //       fontWeight: FontWeight.w400,
          //       fontSize: 10,
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
