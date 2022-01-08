import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/series/series_bloc.dart';
import 'package:wine/presentation/core/misc/genre_container.dart';

/// @nodoc
class SeriesGenres extends StatelessWidget {
  /// @nodoc
  const SeriesGenres({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SeriesBloc, SeriesState>(
      builder: (context, state) {
        return SingleChildScrollView(
          child: Row(
            children: [
              for (int i = 0; i < state.series.genres.length; i++)
                Padding(
                  padding: EdgeInsets.only(
                    right: i == state.series.genres.length ? 0 : 10,
                  ),
                  child: GenreContainer(
                    title: state.series.genres
                        .map((e) => e.getOrNull())
                        .toList()[i],
                  ),
                )
            ],
          ),
        );
      },
    );
  }
}
