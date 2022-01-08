import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/series/series_bloc.dart';
import 'package:wine/presentation/series/widgets/series_summary.dart';

/// @nodoc
class SeriesSummaryLayout extends StatelessWidget {
  /// @nodoc
  const SeriesSummaryLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: Text(
            'Summary',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        BlocBuilder<SeriesBloc, SeriesState>(
          builder: (context, state) {
            return SeriesSummary(summary: state.series.summary.getOrNull());
          },
        )
      ],
    );
  }
}
