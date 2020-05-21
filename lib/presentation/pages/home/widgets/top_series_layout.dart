import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:wine/application/database/home/home_database_bloc.dart';
import 'package:wine/domain/models/series.dart';
import 'package:wine/presentation/widgets/wine_series_card.dart';

class TopSeriesLayout extends StatelessWidget {
  final Random _random = Random();

  List<StaggeredTile> _generateStaggeredTiles(List<Series> seriesList) {
    final List<StaggeredTile> staggeredTiles = <StaggeredTile>[];

    for (final _ in seriesList) {
      staggeredTiles.add(const StaggeredTile.count(1, 2));
    }

    return staggeredTiles;
  }

  List<Widget> _generateTiles(
      List<Series> seriesList, List<String> placeholderList) {
    final List<Widget> tiles = <Widget>[];

    for (final Series series in seriesList) {
      tiles.add(
        WINESeriesCard(
          title: series.title,
          username: series.author.username,
          coverUrl: series.coverUrl,
          placeholderIndex: _random.nextInt(placeholderList.length),
          placeholderUrls: placeholderList,
          onPressed: () {},
        ),
      );
    }

    return tiles;
  }

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.of(context).size;

    return BlocBuilder<HomeDatabaseBloc, HomeDatabaseState>(
      builder: (context, homeDbState) {
        if (homeDbState.topFiveSeries.isEmpty) {
          return const Center(
            child: Text(
              'No top series :(',
            ),
          );
        }
        return ListView(
          children: <Widget>[
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: RichText(
                text: TextSpan(
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17.0,
                    fontWeight: FontWeight.w400,
                  ),
                  children: <InlineSpan>[
                    const TextSpan(text: 'TOP 5 '),
                    if (homeDbState.genreFilterKey != null &&
                        homeDbState.genreFilterKey.isNotEmpty)
                      TextSpan(
                        text:
                            '${homeDbState.genresMap[homeDbState.genreFilterKey].toUpperCase()} ',
                      ),
                    TextSpan(
                      text: homeDbState.timesMap[homeDbState.timeFilterKey]
                          .toUpperCase(),
                    ),
                  ],
                ),
              ),

              //  Text(

              //   'TOP 5 ${homeDbState.timesMap[homeDbState.timeFilterKey].toUpperCase()}',
              //   style: TextStyle(
              //     fontSize: 17.0,
              //     fontWeight: FontWeight.w400,
              //   ),
              // ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              height: mediaQuery.height / 3,
              child: ScrollConfiguration(
                behavior: const ScrollBehavior(),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: homeDbState.topFiveSeries.length,
                  itemBuilder: (BuildContext context, int index) {
                    final Series series = homeDbState.topFiveSeries[index];

                    return Row(
                      children: <Widget>[
                        if (index == 0) const SizedBox(width: 20),
                        WINESeriesCard(
                          title: series.title,
                          username: 'username',
                          coverUrl: series.coverUrl,
                          placeholderIndex: _random.nextInt(
                            homeDbState.placeholders.length,
                          ),
                          placeholderUrls: homeDbState.placeholders,
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
      },
    );
  }
}
