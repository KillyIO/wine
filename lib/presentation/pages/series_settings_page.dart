import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/database/series_settings/series_settings_database_bloc.dart';
import 'package:wine/injection.dart';
import 'package:wine/presentation/layouts/series_settings/series_settings_layout.dart';
import 'package:wine/utils/themes.dart';

/// @nodoc
class SeriesSettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: Themes.wineLightTheme(),
      child: BlocProvider(
        create: (context) => getIt<SeriesSettingsDatabaseBloc>()
          ..add(const SeriesSettingsDatabaseEvent.seriesSettingsLaunchedEVT()),
        child: SeriesSettingsLayout(),
      ),
    );
  }
}
