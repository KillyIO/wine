import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:wine/application/database/series/series_database_bloc.dart';
import 'package:wine/presentation/pages/series/widgets/series_cover.dart';
import 'package:wine/presentation/pages/series/widgets/series_title.dart';
import 'package:wine/presentation/pages/series/widgets/series_author_username.dart';
import 'package:wine/presentation/widgets/wine_stats_button.dart';
import 'package:wine/utils/palettes.dart';

class SeriesDetails extends StatelessWidget {
  final SeriesDatabaseState seriesDbState;

  const SeriesDetails({Key key, @required this.seriesDbState}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const SizedBox(width: 20),
        ClipRRect(
          borderRadius: BorderRadius.circular(6.0),
          child: SeriesCover(
            coverUrl: seriesDbState.series.coverUrl,
            seriesUid: seriesDbState.series.uid,
          ),
        ),
        const SizedBox(width: 15),
        SizedBox(
          height: 125.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SeriesTitle(title: seriesDbState.series.title),
                  const SizedBox(height: 5.5),
                  SeriesAuthorUsername(authorUsername: seriesDbState.author.username),
                ],
              ),
              Row(
                children: <Widget>[
                  WINEStatsButton(
                    icon: Icons.visibility,
                    iconColor: Colors.black38,
                    statsCount: NumberFormat.compact().format(seriesDbState.viewsCount),
                  ),
                  const SizedBox(width: 10),
                  WINEStatsButton(
                    icon: Icons.favorite,
                    iconColor: Palettes.pastelPink,
                    statsCount: NumberFormat.compact().format(seriesDbState.likesCount),
                  ),
                  const SizedBox(width: 10),
                  WINEStatsButton(
                    icon: Icons.bookmark,
                    iconColor: Palettes.pastelYellow,
                    statsCount: NumberFormat.compact().format(seriesDbState.bookmarksCount),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
