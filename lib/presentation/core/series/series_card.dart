import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:string_validator/string_validator.dart';

/// @nodoc
class SeriesCard extends StatelessWidget {
  /// @nodoc
  const SeriesCard({
    Key? key,
    required this.coverURL,
    required this.onPressed,
    required this.title,
    this.titleFontSize = 12,
    required this.uid,
  }) : super(key: key);

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
      child: Card(
        elevation: 4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(6),
                topRight: Radius.circular(6),
              ),
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
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(6),
                  bottomRight: Radius.circular(6),
                ),
                color: Colors.black87,
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: titleFontSize,
                    letterSpacing: .25,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}