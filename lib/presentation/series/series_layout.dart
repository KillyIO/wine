import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:like_button/like_button.dart';
import 'package:wine/application/series/series_bloc.dart';
import 'package:wine/presentation/series/widgets/series_cover_layout.dart';
import 'package:wine/presentation/series/widgets/series_genres.dart';
import 'package:wine/presentation/series/widgets/series_stats.dart';
import 'package:wine/presentation/series/widgets/series_summary_layout.dart';
import 'package:wine/utils/constants/core.dart';
import 'package:wine/utils/constants/palette.dart';
import 'package:wine/utils/functions/dialog_functions.dart';

/// @nodoc
class SeriesLayout extends StatelessWidget {
  /// @nodoc
  const SeriesLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        maxWidth: maxContentLayoutWidth,
      ),
      child: BlocListener<SeriesBloc, SeriesState>(
        listener: (context, state) {
          state.failureOption.when(
            some: (value) => value.when(
              ok: (_) {},
              err: (err) => err.maybeMap(
                series: (f) => f.f.maybeMap(
                  permissionDenied: (_) async => baseErrorDialog(
                    context,
                    <String>['Forbidden action. Permission denied!'],
                  ),
                  seriesNotFound: (_) async => baseErrorDialog(
                    context,
                    <String>['Series not found!'],
                  ),
                  serverError: (_) async => baseErrorDialog(
                    context,
                    <String>['A problem occurred on our end!'],
                  ),
                  unexpected: (_) async => baseErrorDialog(
                    context,
                    <String>['An unexpected error occured!'],
                  ),
                  orElse: () {},
                ),
                orElse: () {},
              ),
            ),
            none: () {},
          );
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: SeriesCoverLayout(),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: SeriesStats(),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: SeriesSummaryLayout(),
                ),
                SeriesGenres(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
