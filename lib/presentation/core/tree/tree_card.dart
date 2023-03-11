import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:string_validator/string_validator.dart';

/// @nodoc
class TreeCard extends StatelessWidget {
  /// @nodoc
  const TreeCard({
    required this.coverURL,
    required this.language,
    required this.onPressed,
    required this.title,
    required this.uid,
    super.key,
    this.titleFontSize = 14,
  });

  /// @nodoc
  final String? coverURL;

  /// @nodoc
  final String? language;

  /// @nodoc
  final VoidCallback onPressed;

  /// @nodoc
  final String? title;

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
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              child: Hero(
                tag: uid,
                child: coverURL != null
                    ? isURL(coverURL)
                        ? CachedNetworkImage(
                            fit: BoxFit.contain,
                            imageUrl: coverURL!,
                          )
                        : Image.file(File(coverURL!))
                    : Container(
                        width: 100,
                        height: 200,
                        color: Colors.black38,
                      ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            child: Center(
              child: Text(
                title ?? 'No title*',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: titleFontSize,
                  letterSpacing: .25,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Center(
            child: Text(
              language ?? 'No language*',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.black38,
                fontWeight: FontWeight.bold,
                fontSize: titleFontSize,
                letterSpacing: .25,
              ),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
