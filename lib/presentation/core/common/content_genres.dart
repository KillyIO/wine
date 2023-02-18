import 'package:flutter/material.dart';
import 'package:wine/presentation/core/common/genre_item.dart';
import 'package:wine/utils/constants/palette.dart';

/// @nodoc
class ContentGenres extends StatelessWidget {
  /// @nodoc
  const ContentGenres({
    required this.genres,
    super.key,
  });

  /// @nodoc
  final List<String> genres;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 0; i < genres.length; i++)
            Padding(
              padding: EdgeInsets.only(
                right: i == genres.length ? 0 : 10,
              ),
              child: GenreItem(
                backgroundColor: [
                  pastelBlue,
                  pastelCyan,
                  pastelPink,
                  pastelYellow
                ][i % 4],
                textColor: Colors.white,
                title: genres[i],
              ),
            )
        ],
      ),
    );
  }
}
