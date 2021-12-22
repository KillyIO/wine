import 'package:flutter/material.dart';
import 'package:wine/presentation/series/widgets/series_author_username.dart';
import 'package:wine/presentation/series/widgets/series_cover.dart';
import 'package:wine/presentation/series/widgets/series_title.dart';

/// @nodoc
class SeriesDetails extends StatelessWidget {
  /// @nodoc
  const SeriesDetails({
    Key? key,
    required this.authorUsername,
    required this.coverURL,
    required this.seriesUID,
    required this.title,
  }) : super(key: key);

  /// @nodoc
  final String? authorUsername;

  /// @nodoc
  final String? coverURL;

  /// @nodoc
  final String seriesUID;

  /// @nodoc
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: SeriesCover(
              coverURL: coverURL,
              seriesUID: seriesUID,
            ),
          ),
        ),
        Expanded(
          child: SizedBox(
            height: 125,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SeriesTitle(title: title),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.5),
                      child:
                          SeriesAuthorUsername(authorUsername: authorUsername),
                    ),
                  ],
                ),
                Row(
                  children: [],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
