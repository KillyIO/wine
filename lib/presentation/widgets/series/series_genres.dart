import 'package:flutter/material.dart';
import 'package:wine/presentation/widgets/wine_genre_container.dart';
import 'package:wine/utils/extensions.dart';

/// @nodoc
class SeriesGenres extends StatelessWidget {
  /// @nodoc
  const SeriesGenres({
    Key key,
    @required this.genre,
    @required this.genreOptional,
  }) : super(key: key);

  /// @nodoc
  final String genre;

  /// @nodoc
  final String genreOptional;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const SizedBox(width: 20),
        WINEGenreContainer(genre),
        const SizedBox(width: 15),
        if (genreOptional.isNotEmptyOrNull) WINEGenreContainer(genreOptional),
        const SizedBox(width: 20),
      ],
    );
  }
}
