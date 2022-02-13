import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:string_validator/string_validator.dart';

/// @nodoc
class BranchTile extends StatelessWidget {
  /// @nodoc
  const BranchTile({
    Key? key,
    required this.coverURL,
    required this.language,
    required this.onPressed,
    required this.title,
    required this.uid,
  }) : super(key: key);

  /// @nodoc
  final String? coverURL;

  /// @nodoc
  final String? language;

  /// @nodoc
  final VoidCallback onPressed;

  /// @nodoc
  final String? title;

  /// @nodoc
  final String uid;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 0.5,
              color: Colors.black26,
            ),
          ),
        ),
        height: mediaQuery.height * .15,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title ?? 'No title*',
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      language ?? 'No language*',
                      style: const TextStyle(
                        color: Colors.black38,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Hero(
              tag: uid,
              child: coverURL != null
                  ? isURL(coverURL!)
                      ? CachedNetworkImage(
                          fit: BoxFit.contain,
                          imageUrl: coverURL!,
                        )
                      : Image.file(File(coverURL!))
                  : Container(
                      width: mediaQuery.width * .25,
                      height: mediaQuery.height * .15,
                      color: Colors.black38,
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
