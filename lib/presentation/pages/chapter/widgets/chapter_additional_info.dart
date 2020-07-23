import 'package:flutter/material.dart';
import 'package:wine/presentation/widgets/wine_genre_container.dart';
import 'package:wine/utils/extensions.dart';

class ChapterAdditionalInfo extends StatelessWidget {
  final String authorUsername;
  final String seriesName;
  final String genre;
  final String genreOptional;
  final String copyrights;

  const ChapterAdditionalInfo({
    Key key,
    @required this.authorUsername,
    @required this.seriesName,
    @required this.genre,
    @required this.genreOptional,
    @required this.copyrights,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(height: 5),
          RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: 'Author · ',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(text: authorUsername),
              ],
              style: TextStyle(
                color: Colors.black38,
                fontSize: 16.0,
              ),
            ),
          ),
          const SizedBox(height: 5),
          RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: 'Series · ',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(text: seriesName),
              ],
              style: TextStyle(
                color: Colors.black38,
                fontSize: 16.0,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: <Widget>[
              WINEGenreContainer(genre),
              const SizedBox(width: 15),
              if (genreOptional.isNotEmptyOrNull) WINEGenreContainer(genreOptional),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: <Widget>[
              Icon(Icons.copyright, color: Colors.black54),
              const SizedBox(width: 5),
              Text(
                copyrights,
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
