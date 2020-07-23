import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/database/series/series_database_bloc.dart';
import 'package:wine/presentation/pages/series/utils/series_database_methods.dart';
import 'package:wine/presentation/pages/series/utils/series_listeners.dart';
import 'package:wine/presentation/pages/series/widgets/series_app_bar.dart';
import 'package:wine/presentation/pages/series/widgets/series_chapter_one.dart';
import 'package:wine/presentation/pages/series/widgets/series_details.dart';
import 'package:wine/presentation/pages/series/widgets/series_genres.dart';
import 'package:wine/presentation/pages/series/widgets/series_resume.dart';
import 'package:wine/presentation/pages/series/widgets/series_summary_layout.dart';

class SeriesLayout extends StatefulWidget {
  const SeriesLayout({Key key}) : super(key: key);

  @override
  _SeriesLayoutState createState() => _SeriesLayoutState();
}

class _SeriesLayoutState extends State<SeriesLayout> {
  SeriesDatabaseMethods _seriesDbMethods;
  final SeriesListeners _seriesListeners = SeriesListeners();

  @override
  void initState() {
    super.initState();
    _seriesDbMethods = SeriesDatabaseMethods(context);
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<SeriesDatabaseBloc, SeriesDatabaseState>(listener: _seriesListeners.listener),
      ],
      child: BlocBuilder<SeriesDatabaseBloc, SeriesDatabaseState>(
        builder: (context, seriesDbState) {
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(41.5),
              child: SeriesAppBar(seriesDbState: seriesDbState, methods: _seriesDbMethods),
            ),
            body: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const SizedBox(height: 20),
                    SeriesDetails(seriesDbState: seriesDbState),
                    const SizedBox(height: 20),
                    SeriesSummaryLayout(seriesDbState: seriesDbState),
                    const SizedBox(height: 20),
                    SeriesGenres(
                      genre: seriesDbState.genresMap[seriesDbState.series.genre],
                      genreOptional: seriesDbState.genresMap[seriesDbState.series.genreOptional],
                    ),
                    const SizedBox(height: 50),
                    SeriesChapterOne(
                      chapterMinified: seriesDbState.chapterOneMinified,
                      authorUsername: seriesDbState.author.username,
                      seriesTitle: seriesDbState.series.title,
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
