import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/series/series_bloc.dart';
import 'package:wine/presentation/series/widgets/series_details.dart';

/// @nodoc
class SeriesLayout extends StatelessWidget {
  /// @nodoc
  const SeriesLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SeriesBloc, SeriesState>(
      listener: (context, state) {
        // TODO(SSebigo): implement listener
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: SeriesDetails(
                    authorUsername: state.author.username.getOrNull() ??
                        state.session.username.getOrNull(),
                    coverURL: state.series.coverURL.getOrNull(),
                    seriesUID: state.series.uid.getOrCrash(),
                    title: state.series.title.getOrNull(),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
