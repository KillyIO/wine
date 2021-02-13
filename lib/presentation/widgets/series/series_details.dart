import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:wine/application/database/series/series_database_bloc.dart';
import 'package:wine/presentation/widgets/series/series_cover.dart';
import 'package:wine/presentation/widgets/series/series_title.dart';
import 'package:wine/presentation/widgets/series/series_author_username.dart';
import 'package:wine/presentation/widgets/wine_stats_button.dart';
import 'package:wine/utils/palette.dart';

/// @nodoc
class SeriesDetails extends StatelessWidget {
  /// @nodoc
  const SeriesDetails({
    Key key,
    @required this.seriesDatabaseState,
  }) : super(key: key);

  /// @nodoc
  final SeriesDatabaseState seriesDatabaseState;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const SizedBox(width: 20),
        ClipRRect(
          borderRadius: BorderRadius.circular(6.0),
          child: SeriesCover(
            coverURL: seriesDatabaseState.series.coverURL,
            seriesUID: seriesDatabaseState.series.uid,
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
                  SeriesTitle(title: seriesDatabaseState.series.title),
                  const SizedBox(height: 5.5),
                  SeriesAuthorUsername(
                    authorUsername: seriesDatabaseState.series.authorUsername,
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  WINEStatsButton(
                    icon: Icons.visibility,
                    iconColor: Colors.black38,
                    statsCount: NumberFormat.compact()
                        .format(seriesDatabaseState.viewsCount.count),
                  ),
                  const SizedBox(width: 10),
                  WINEStatsButton(
                    icon: Icons.favorite,
                    iconColor: Palettes.pastelPink,
                    statsCount: NumberFormat.compact()
                        .format(seriesDatabaseState.likesCount.count),
                  ),
                  const SizedBox(width: 10),
                  WINEStatsButton(
                    icon: Icons.bookmark,
                    iconColor: Palettes.pastelYellow,
                    statsCount: NumberFormat.compact()
                        .format(seriesDatabaseState.bookmarksCount.count),
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
