import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/database/series/series_database_bloc.dart';
import 'package:wine/injection.dart';
import 'package:wine/presentation/pages/series/widgets/series_layout.dart';
import 'package:wine/utils/arguments.dart';
import 'package:wine/utils/themes.dart';

class SeriesPage extends StatelessWidget {
  final SeriesPageArgs args;

  const SeriesPage({Key key, this.args}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: Themes.wineLightTheme(),
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => getIt<SeriesDatabaseBloc>())
        ],
        child: SeriesLayout(args: args),
      ),
    );
  }
}
