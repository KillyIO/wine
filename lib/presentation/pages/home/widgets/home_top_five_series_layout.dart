import 'package:flutter/material.dart';

import 'package:wine/domain/models/series.dart';
import 'package:wine/presentation/widgets/wine_series_card.dart';
import 'package:wine/routes.dart';
import 'package:wine/utils/arguments.dart';
import 'package:wine/utils/constants.dart';
import 'package:wine/utils/extensions.dart';

class HomeTopFiveSeriesLayout extends StatelessWidget {
  final List<Series> topFiveSeries;
  final String genreStr;
  final String timeStr;

  const HomeTopFiveSeriesLayout({
    Key key,
    this.topFiveSeries,
    this.genreStr,
    this.timeStr,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: RichText(
            text: TextSpan(
              style: TextStyle(color: Colors.black, fontSize: 17.0, fontWeight: FontWeight.w500),
              children: <InlineSpan>[
                const TextSpan(text: 'TOP 5 '),
                if (genreStr.isNotEmptyOrNull) TextSpan(text: '${genreStr.toUpperCase()} '),
                TextSpan(text: timeStr.toUpperCase()),
              ],
            ),
          ),
        ),
        const SizedBox(height: 15),
        SizedBox(
          height: mediaQuery.height / 3,
          child: ScrollConfiguration(
            behavior: const ScrollBehavior(),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: topFiveSeries.length,
              itemBuilder: (BuildContext context, int index) {
                final Series series = topFiveSeries[index];

                return Row(
                  children: <Widget>[
                    if (index == 0) const SizedBox(width: 20),
                    WINESeriesCard(
                      uid: series.uid,
                      title: series.title,
                      coverUrl: series.coverUrl,
                      authorName: series.author.username,
                      onPressed: () => sailor.navigate(Constants.seriesRoute, args: SeriesPageArgs(series: series)),
                      width: mediaQuery.width / 2.5,
                      height: mediaQuery.height / 3,
                      titleFontSize: 16.0,
                      authorNameFontSize: 15.0,
                    ),
                    const SizedBox(width: 20),
                  ],
                );
              },
              shrinkWrap: true,
            ),
          ),
        ),
      ],
    );
  }
}
