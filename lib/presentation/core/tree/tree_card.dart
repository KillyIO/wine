import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:string_validator/string_validator.dart';
import 'package:wine/l10n/l10n.dart';

class TreeCard extends StatelessWidget {
  const TreeCard({
    required this.coverURL,
    required this.language,
    required this.onPressed,
    required this.title,
    required this.uid,
    super.key,
    this.titleFontSize = 14,
  });

  final String? coverURL;

  final String? language;

  final VoidCallback onPressed;

  final String? title;

  final double titleFontSize;

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
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Center(
              child: Text(
                title ?? 'No title*',
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: titleFontSize,
                  letterSpacing: .25,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 7.5, right: 7.5, bottom: 5),
            child: Text(
              language != null
                  ? context.getTranslation(language!)
                  : 'No language*',
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
          ),
        ],
      ),
    );
  }
}
