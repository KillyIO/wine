import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class SeriesDraftCard extends StatelessWidget {
  final String title;
  final String coverPath;
  final String placeholderUrl;
  final VoidCallback onPressed;

  const SeriesDraftCard({
    Key key,
    this.title,
    this.coverPath,
    this.placeholderUrl,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.0,
      width: 50.0,
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
              child: coverPath != null && coverPath.isNotEmpty
                  ? Image.file(
                      File(coverPath),
                      fit: BoxFit.contain,
                    )
                  : CachedNetworkImage(
                      fit: BoxFit.contain,
                      imageUrl: placeholderUrl,
                      progressIndicatorBuilder: (
                        context,
                        url,
                        downloadProgress,
                      ) =>
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
                fontSize: 12.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
