import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:wine/application/database/series/series_database_bloc.dart';
import 'package:wine/domain/models/series.dart';
import 'package:wine/injection.dart';
import 'package:wine/presentation/layouts/series/series_layout.dart';
import 'package:wine/utils/themes.dart';

/// @nodoc
class SeriesPage extends StatelessWidget {
  /// @nodoc
  const SeriesPage({
    Key key,
    @required this.series,
  }) : super(key: key);

  /// @nodoc
  final Series series;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: Themes.wineLightTheme(),
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<SeriesDatabaseBloc>()
              ..add(SeriesDatabaseEvent.seriesLaunchedEVT(series)),
          ),
        ],
        child: const SeriesLayout(),
      ),
    );
  }
}
