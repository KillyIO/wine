import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:wine/domain/models/series_minified.dart';
import 'package:wine/presentation/routes/router.gr.dart';
import 'package:wine/presentation/widgets/wine_series_card.dart';
import 'package:wine/utils/extensions.dart';

class HomeTopFiveSeriesLayout extends StatelessWidget {
  final List<SeriesMinified> topFiveSeriesMinified;
  final String genreStr;
  final String timeStr;

  const HomeTopFiveSeriesLayout({
    Key key,
    @required this.topFiveSeriesMinified,
    @required this.genreStr,
    @required this.timeStr,
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
              itemCount: topFiveSeriesMinified.length,
              itemBuilder: (BuildContext context, int index) {
                final SeriesMinified seriesMinified = topFiveSeriesMinified[index];

                return Row(
                  children: <Widget>[
                    if (index == 0) const SizedBox(width: 20),
                    WINESeriesCard(
                      uid: seriesMinified.uid,
                      title: seriesMinified.title,
                      coverUrl: seriesMinified.coverUrl,
                      authorUsername: seriesMinified.authorUsername,
                      onPressed: () async => ExtendedNavigator.root.push(
                        Routes.seriesPage,
                        arguments: SeriesPageArguments(seriesUid: seriesMinified.uid),
                      ),
                      width: mediaQuery.width / 2.5,
                      height: mediaQuery.height / 3,
                      titleFontSize: 16.0,
                      authorUsernameFontSize: 15.0,
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
