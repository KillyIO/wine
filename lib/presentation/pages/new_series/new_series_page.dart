import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:wine/application/database/new_series/new_series_database_bloc.dart';
import 'package:wine/domain/models/hive/series_draft.dart';
import 'package:wine/injection.dart';
import 'package:wine/presentation/pages/new_series/widgets/new_series_form_layout.dart';
import 'package:wine/utils/themes.dart';

class NewSeriesPage extends StatelessWidget {
  final SeriesDraft seriesDraft;

  const NewSeriesPage({
    Key key,
    this.seriesDraft,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: Themes.wineLightTheme(),
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<NewSeriesDatabaseBloc>()
              ..add(NewSeriesDatabaseEvent.newSeriesPageLaunchedEVT(seriesDraft: seriesDraft, context: context)),
          ),
        ],
        child: NewSeriesFormLayout(seriesDraft: seriesDraft),
      ),
    );
  }
}
