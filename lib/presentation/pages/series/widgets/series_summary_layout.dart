import 'package:flutter/material.dart';

import 'package:wine/application/database/series/series_database_bloc.dart';
import 'package:wine/presentation/pages/series/widgets/series_summary.dart';

class SeriesSummaryLayout extends StatelessWidget {
  final SeriesDatabaseState seriesDbState;

  const SeriesSummaryLayout({
    Key key,
    @required this.seriesDbState,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Summary',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                'Show more',
                style: TextStyle(
                  color: Colors.black45,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SeriesSummary(summary: seriesDbState.series.summary),
        ),
      ],
    );
  }
}
