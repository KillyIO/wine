import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

/// @nodoc
class SeriesSummary extends StatelessWidget {
  /// @nodoc
  const SeriesSummary({
    Key? key,
    required this.summary,
  }) : super(key: key);

  /// @nodoc
  final String? summary;

  @override
  Widget build(BuildContext context) {
    if (summary != null) {
      return ReadMoreText(
        summary!,
        lessStyle: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        moreStyle: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        trimMode: TrimMode.Line,
        trimCollapsedText: ' More',
        trimExpandedText: ' Less',
        trimLines: 3,
        style: const TextStyle(
          color: Colors.black54,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
      );
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black26,
            ),
            height: 10,
            width: MediaQuery.of(context).size.width,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black26,
            ),
            height: 10,
            width: MediaQuery.of(context).size.width,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.black26,
          ),
          height: 10,
          width: MediaQuery.of(context).size.width / 2,
        ),
      ],
    );
  }
}
