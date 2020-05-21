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
    return BlocBuilder<HomeDatabaseBloc, HomeDatabaseState>(
      builder: (context, homeDbState) {
        if (homeDbState.topFiveSeries.isEmpty) {
          return const Center(
            child: Text(
              'No top series :(',
            ),
          );
        }
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: ListView(
            children: <Widget>[
              // const SizedBox(height: 50),
              // Text(
              //   'TOP 5 SERIES ${homeDbState.times[homeDbState.timeFilterKey].toUpperCase()}',
              //   style: TextStyle(
              //     fontSize: 17.0,
              //     fontWeight: FontWeight.w500,
              //   ),
              // ),
              // const SizedBox(height: 15),
              // SizedBox(
              //   height: MediaQuery.of(context).size.height / 2,
              //   child: ListView.builder(
              //     scrollDirection: Axis.horizontal,
              //     itemCount: homeDbState.topFiveSeries.length,
              //     itemBuilder: (BuildContext context, int index) {
              //       final Series series = homeDbState.topFiveSeries[index];

              //       return Padding(
              //         padding: const EdgeInsets.only(right: 10.0),
              //         child: WINESeriesCard(
              //           title: series.title,
              //           username: 'username',
              //           coverUrl: series.coverUrl,
              //           placeholderIndex: _random.nextInt(
              //             homeDbState.placeholders.length,
              //           ),
              //           placeholderUrls: homeDbState.placeholders,
              //           onPressed: () {},
              //           height: MediaQuery.of(context).size.height / 3,
              //           width: MediaQuery.of(context).size.width / 2,
              //           titleFontSize: 20.0,
              //           usernameFontSize: 14.0,
              //         ),
              //       );
              //     },
              //     shrinkWrap: true,
              //   ),
              // ),
              // const SizedBox(height: 50),
            ],
          ),
        );
      },
    );
  }
}
