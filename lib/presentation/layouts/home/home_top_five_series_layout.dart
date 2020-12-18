import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:wine/domain/models/series.dart';
import 'package:wine/presentation/routes/router.gr.dart';
import 'package:wine/presentation/widgets/wine_series_card.dart';
import 'package:wine/utils/extensions.dart';

/// @nodoc
class HomeTopFiveSeriesLayout extends StatelessWidget {
  /// @nodoc
  const HomeTopFiveSeriesLayout({
    Key key,
    @required this.topFiveSeriesList,
    @required this.genreStr,
    @required this.timeStr,
  }) : super(key: key);

  /// @nodoc
  final List<Series> topFiveSeriesList;

  /// @nodoc
  final String genreStr;

  /// @nodoc
  final String timeStr;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: RichText(
            text: TextSpan(
              style: const TextStyle(
                color: Colors.black,
                fontSize: 17.0,
                fontWeight: FontWeight.w500,
              ),
              children: <InlineSpan>[
                const TextSpan(text: 'TOP 5 '),
                if (genreStr.isNotEmptyOrNull)
                  TextSpan(text: '${genreStr.toUpperCase()} '),
                TextSpan(text: timeStr.toUpperCase()),
              ],
            ),
          ),
        ),
        const SizedBox(height: 15),
        SizedBox(
          height: mediaQuery.height / 3,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                const SizedBox(width: 20),
                for (final series in topFiveSeriesList)
                  Row(
                    children: [
                      WINESeriesCard(
                        uid: series.uid,
                        title: series.title,
                        coverURL: series.coverURL,
                        authorUsername: series.authorUsername,
                        onPressed: () async => ExtendedNavigator.root.push(
                          Routes.seriesPage,
                          arguments: SeriesPageArguments(series: series),
                        ),
                        width: mediaQuery.width / 2.5,
                        height: mediaQuery.height / 3,
                        titleFontSize: 16.0,
                        authorUsernameFontSize: 15.0,
                      ),
                      const SizedBox(width: 20),
                    ],
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
