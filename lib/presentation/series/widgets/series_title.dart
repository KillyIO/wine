import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

/// @nodoc
class SeriesTitle extends StatelessWidget {
  /// @nodoc
  const SeriesTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  /// @nodoc
  final String? title;

  @override
  Widget build(BuildContext context) {
    if (title != null) {
      return ReadMoreText(
        title!,
        lessStyle: const TextStyle(
          color: Colors.black38,
          fontWeight: FontWeight.bold,
        ),
        moreStyle: const TextStyle(
          color: Colors.black38,
          fontWeight: FontWeight.bold,
        ),
        trimMode: TrimMode.Line,
        trimCollapsedText: ' More',
        trimExpandedText: ' Less',
        style: const TextStyle(
          color: Colors.black,
          fontSize: 17,
          fontWeight: FontWeight.w600,
        ),
      );
    }
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.black26,
      ),
      height: 10,
      width: MediaQuery.of(context).size.width * .5,
    );
  }
}
