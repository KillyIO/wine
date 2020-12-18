import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/database/series/series_database_bloc.dart';
import 'package:wine/presentation/utils/series/series_database_methods.dart';
import 'package:wine/presentation/utils/series/series_listeners.dart';
import 'package:wine/presentation/widgets/series/series_app_bar.dart';
import 'package:wine/presentation/widgets/series/series_chapter_one.dart';
import 'package:wine/presentation/widgets/series/series_details.dart';
import 'package:wine/presentation/widgets/series/series_genres.dart';
import 'package:wine/presentation/widgets/series/series_resume.dart';
import 'package:wine/presentation/layouts/series/series_summary_layout.dart';

/// @nodoc
class SeriesLayout extends StatefulWidget {
  /// @nodoc
  const SeriesLayout({Key key}) : super(key: key);

  @override
  _SeriesLayoutState createState() => _SeriesLayoutState();
}

class _SeriesLayoutState extends State<SeriesLayout> {
  final SeriesListeners _seriesListeners = SeriesListeners();
  SeriesDatabaseMethods _seriesDatabaseMethods;

  @override
  void initState() {
    super.initState();
    _seriesDatabaseMethods = SeriesDatabaseMethods(context);
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<SeriesDatabaseBloc, SeriesDatabaseState>(
          listener: _seriesListeners.listener,
        ),
      ],
      child: BlocBuilder<SeriesDatabaseBloc, SeriesDatabaseState>(
        builder: (context, seriesDatabaseState) {
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(41.5),
              child: SeriesAppBar(
                seriesDatabaseState: seriesDatabaseState,
                seriesDatabaseMethods: _seriesDatabaseMethods,
              ),
            ),
            body: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const SizedBox(height: 20),
                    SeriesDetails(seriesDatabaseState: seriesDatabaseState),
                    const SizedBox(height: 20),
                    SeriesSummaryLayout(
                      seriesDatabaseState: seriesDatabaseState,
                    ),
                    const SizedBox(height: 20),
                    SeriesGenres(
                      genre: seriesDatabaseState.series.genre,
                      genreOptional: seriesDatabaseState.series.genreOptional,
                    ),
                    const SizedBox(height: 50),
                    SeriesChapterOne(
                      chapterOne: seriesDatabaseState.chapterOne,
                      authorUsername: seriesDatabaseState.series.authorUsername,
                      seriesTitle: seriesDatabaseState.series.title,
                    ),
                    const SizedBox(height: 50),
                    SeriesResume(),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
