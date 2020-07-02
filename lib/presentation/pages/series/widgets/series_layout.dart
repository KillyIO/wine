import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/database/series/series_database_bloc.dart';
import 'package:wine/presentation/pages/series/utils/series_database_methods.dart';
import 'package:wine/presentation/pages/series/utils/series_listeners.dart';
import 'package:wine/presentation/pages/series/widgets/series_app_bar.dart';
import 'package:wine/presentation/pages/series/widgets/series_details.dart';
import 'package:wine/presentation/pages/series/widgets/series_summary.dart';
import 'package:wine/presentation/widgets/wine_button.dart';
import 'package:wine/presentation/widgets/wine_genre_container.dart';
import 'package:wine/utils/arguments.dart';
import 'package:wine/utils/extensions.dart';

class SeriesLayout extends StatefulWidget {
  final SeriesPageArgs args;

  const SeriesLayout({
    Key key,
    @required this.args,
  }) : super(key: key);

  @override
  _SeriesLayoutState createState() => _SeriesLayoutState();
}

class _SeriesLayoutState extends State<SeriesLayout> with AfterLayoutMixin {
  SeriesDatabaseMethods _seriesDbMethods;
  final SeriesListeners _seriesListeners = SeriesListeners();

  @override
  void initState() {
    super.initState();
    _seriesDbMethods = SeriesDatabaseMethods(context);
  }

  @override
  void afterFirstLayout(BuildContext context) {
    _seriesDbMethods.seriesPageLaunched(widget.args.series);
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
                  children: <Widget>[
                    const SizedBox(height: 20),
                    SeriesDetails(series: widget.args.series, state: seriesDbState),
                    SeriesSummary(summary: widget.args.series.summary),
                    Row(
                      children: <Widget>[
                        const SizedBox(width: 20),
                        WINEGenreContainer(seriesDbState.genresMap[widget.args.series.genre]),
                        const SizedBox(width: 15),
                        if (widget.args.series.genreOptional.isNotEmptyOrNull)
                          WINEGenreContainer(seriesDbState.genresMap[widget.args.series.genreOptional]),
                        const SizedBox(width: 20),
                      ],
                    ),
                    const SizedBox(height: 50),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: WINEButton(
                        title: 'READ FIRST CHAPTER',
                        onPressed: _seriesDbMethods.readChapterOneButtonPressed,
                        fontSize: 18.0,
                        hasRoundedCorners: true,
                      ),
                    ),
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
