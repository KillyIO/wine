import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_info/package_info.dart';
import 'package:sailor/sailor.dart';
import 'package:wine/application/authentication/core/core_authentication_bloc.dart';
import 'package:wine/application/authentication/settings/settings_authentication_bloc.dart';
import 'package:wine/application/database/settings/settings_database_bloc.dart';
import 'package:wine/application/navigation/home/home_navigation_bloc.dart';
import 'package:wine/application/outlier/settings/settings_outlier_bloc.dart';
import 'package:wine/injection.dart';
import 'package:wine/presentation/pages/settings/widgets/account_settings.dart';
import 'package:wine/presentation/pages/settings/widgets/app_version.dart';
import 'package:wine/presentation/pages/settings/widgets/settings_layout.dart';
import 'package:wine/presentation/widgets/custom_show_dialog.dart';
import 'package:wine/presentation/widgets/error_dialog.dart';
import 'package:wine/routes.dart';
import 'package:wine/utils/constants.dart';
import 'package:wine/utils/palettes.dart';
import 'package:wine/utils/themes.dart';

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
              ..add(const SettingsDatabaseEvent.settingsLaunched()),
          ),
          BlocProvider(
            create: (context) => getIt<SettingsOutlierBloc>()
              ..add(const SettingsOutlierEvent.getAppDetails()),
          ),
        ],
        child: SettingsLayout(),
      ),
    );
  }
}
