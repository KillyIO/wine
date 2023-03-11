import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:string_validator/string_validator.dart';
import 'package:wine/presentation/core/branch/branch_index.dart';
import 'package:wine/presentation/core/branch/branch_title.dart';

/// @nodoc
class BranchLeafHead extends StatelessWidget {
  /// @nodoc
  const BranchLeafHead({
    required this.coverURL,
    required this.index,
    required this.title,
    super.key,
  });

  /// @nodoc
  final String? coverURL;

  /// @nodoc
  final int? index;

  /// @nodoc
  final String? title;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 250,
          width: mediaQuery.width,
          child: Stack(
            children: [
              SizedBox(
                height: 250,
                width: mediaQuery.width,
                child: coverURL != null
                    ? isURL(coverURL)
                        ? CachedNetworkImage(
                            imageUrl: coverURL!,
                            fit: BoxFit.fitWidth,
                          )
                        : Image.file(File(coverURL!), fit: BoxFit.fitWidth)
                    : Container(),
              ),
              Container(
                height: 250,
                width: mediaQuery.width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.white.withOpacity(.25),
                      Colors.white.withOpacity(.75),
                      Colors.white,
                    ],
                  ),
                ),
              ),
              Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: BranchIndex(index: index),
                    ),
                    BranchTitle(title: title),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
