import 'package:flutter/material.dart';
import 'package:wine/features/core/genre_item.widget.dart';
import 'package:wine/utils/constants/palette.dart';

/// @nodoc
class ContentGenres extends StatelessWidget {
  /// @nodoc
  const ContentGenres({
    super.key,
    required this.genres,
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
