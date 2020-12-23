import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/database/chapter_settings/chapter_settings_database_bloc.dart';
import 'package:wine/injection.dart';
import 'package:wine/presentation/layouts/chapter_settings/chapter_settings_layout.dart';
import 'package:wine/utils/themes.dart';

/// @nodoc
class ChapterSettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: Themes.wineLightTheme(),
      child: BlocProvider(
        create: (context) => getIt<ChapterSettingsDatabaseBloc>()
          ..add(
            const ChapterSettingsDatabaseEvent.chapterSettingsLaunchedEVT(),
          ),
        child: ChapterSettingsLayout(),
      ),
    );
  }
}
