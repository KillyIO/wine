import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/series/series_bloc.dart';
import 'package:wine/presentation/series/widgets/series_author_username.dart';
import 'package:wine/presentation/series/widgets/series_cover.dart';
import 'package:wine/presentation/series/widgets/series_title.dart';

/// @nodoc
class SeriesCoverLayout extends StatelessWidget {
  /// @nodoc
  const SeriesCoverLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: BlocBuilder<SeriesBloc, SeriesState>(
              builder: (context, state) {
                return SeriesCover(
                  coverURL: state.series.coverURL.getOrNull(),
                  seriesUID: state.series.uid.getOrCrash(),
                );
              },
            ),
          ),
        ),
        Expanded(
          child: SizedBox(
            height: 125,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    BlocBuilder<SeriesBloc, SeriesState>(
                      builder: (context, state) {
                        return SeriesTitle(
                          title: state.series.title.getOrNull(),
                        );
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.5),
                      child: BlocBuilder<SeriesBloc, SeriesState>(
                        builder: (context, state) {
                          return SeriesAuthorUsername(
                            authorUsername: state.author.username.getOrNull() ??
                                state.session.username.getOrNull(),
                          );
                        },
                      ),
                    ),
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
