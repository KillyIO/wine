import 'dart:math';

import 'package:flutter/material.dart';

import 'package:wine/application/database/home/home_database_bloc.dart';
import 'package:wine/domain/models/series.dart';
import 'package:wine/presentation/widgets/wine_series_card.dart';

class TopFiveSeriesLayout extends StatelessWidget {
  final HomeDatabaseState state;

  const TopFiveSeriesLayout({
    Key key,
    this.state,
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
              style: TextStyle(
                color: Colors.black,
                fontSize: 17.0,
                fontWeight: FontWeight.w500,
              ),
              children: <InlineSpan>[
                const TextSpan(text: 'TOP 5 '),
                if (state.genreFilterKey != null &&
                    state.genreFilterKey.isNotEmpty)
                  TextSpan(
                    text:
                        '${state.genresMap[state.genreFilterKey].toUpperCase()} ',
                  ),
                TextSpan(
                  text: state.timesMap[state.timeFilterKey].toUpperCase(),
                ),
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
              itemCount: state.topFiveSeries.length,
              itemBuilder: (BuildContext context, int index) {
                final Series series = state.topFiveSeries[index];

                return Row(
                  children: <Widget>[
                    if (index == 0) const SizedBox(width: 20),
                    WINESeriesCard(
                      title: series.title,
                      username: series.author.username,
                      coverUrl: series.coverUrl,
                      placeholderIndex: state.placeholderIndexes[
                          index % state.placeholderIndexes.length],
                      placeholderUrls: state.placeholders,
                      onPressed: () {},
                      width: mediaQuery.width / 2.5,
                      height: mediaQuery.height / 3,
                      titleFontSize: 16.0,
                      usernameFontSize: 14.0,
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
