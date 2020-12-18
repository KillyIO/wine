import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/authentication/settings/settings_authentication_bloc.dart';
import 'package:wine/application/database/settings/settings_database_bloc.dart';
import 'package:wine/application/other/settings/settings_other_bloc.dart';
import 'package:wine/injection.dart';
import 'package:wine/presentation/layouts/settings/settings_layout.dart';
import 'package:wine/utils/themes.dart';

/// @nodoc
class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: Themes.wineLightTheme(),
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<SettingsAuthenticationBloc>(),
          ),
          BlocProvider(
            create: (context) => getIt<SettingsDatabaseBloc>()
              ..add(const SettingsDatabaseEvent.settingsLaunchedEVT()),
          ),
          BlocProvider(
            create: (context) => getIt<SettingsOtherBloc>()
              ..add(const SettingsOtherEvent.getAppDetailsEVT()),
          ),
        ],
        child: SettingsLayout(),
      ),
    );
  }
}
