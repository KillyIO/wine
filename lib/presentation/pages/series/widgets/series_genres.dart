import 'package:flutter/material.dart';
import 'package:wine/presentation/widgets/wine_genre_container.dart';
import 'package:wine/utils/extensions.dart';

class SeriesGenres extends StatelessWidget {
  final String genre;
  final String genreOptional;

  const SeriesGenres({
    Key key,
    @required this.genre,
    @required this.genreOptional,
  }) : super(key: key);

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
