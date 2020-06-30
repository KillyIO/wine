import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:wine/application/database/series/series_database_bloc.dart';
import 'package:wine/domain/models/series.dart';
import 'package:wine/presentation/widgets/wine_stats_button.dart';
import 'package:wine/utils/palettes.dart';

class SeriesDetails extends StatelessWidget {
  final Series series;
  final SeriesDatabaseState state;

  const SeriesDetails({
    Key key,
    @required this.series,
    @required this.state,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const SizedBox(width: 20),
        ClipRRect(
          borderRadius: BorderRadius.circular(6.0),
          child: Hero(
            tag: series.uid,
            child: CachedNetworkImage(fit: BoxFit.contain, imageUrl: series.coverUrl, height: 125.0),
          ),
        ),
        const SizedBox(width: 15),
        SizedBox(
          height: 125.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    series.title,
                    style: TextStyle(color: Colors.black, fontSize: 17.0, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 7.5),
                  Text(
                    series.author.username,
                    style: TextStyle(color: Colors.black26, fontSize: 16.0, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  WINEStatsButton(
                    icon: Icons.visibility,
                    iconColor: Colors.black38,
                    statsCount: NumberFormat.compact().format(state.viewsCount),
                  ),
                  const SizedBox(width: 10),
                  WINEStatsButton(
                    icon: Icons.favorite,
                    iconColor: Palettes.pastelPink,
                    statsCount: NumberFormat.compact().format(state.likesCount),
                  ),
                  const SizedBox(width: 10),
                  WINEStatsButton(
                    icon: Icons.bookmark,
                    iconColor: Palettes.pastelYellow,
                    statsCount: NumberFormat.compact().format(state.bookmarksCount),
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
