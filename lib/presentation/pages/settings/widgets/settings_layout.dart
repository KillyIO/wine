import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/authentication/settings/settings_authentication_bloc.dart';
import 'package:wine/application/database/settings/settings_database_bloc.dart';
import 'package:wine/presentation/pages/settings/utils/settings_listeners.dart';
import 'package:wine/presentation/pages/settings/widgets/settings_account_settings.dart';
import 'package:wine/presentation/pages/settings/widgets/settings_app_version.dart';
import 'package:wine/presentation/widgets/wine_leading_image_button.dart';
import 'package:wine/presentation/widgets/wine_loading_screen.dart';

class SettingsLayout extends StatefulWidget {
  @override
  _SettingsLayoutState createState() => _SettingsLayoutState();
}

class _SettingsLayoutState extends State<SettingsLayout> with TickerProviderStateMixin {
  final SettingsListeners _stgsListeners = SettingsListeners();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(41.5),
        child: AppBar(
          backgroundColor: Colors.transparent,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(0.0),
            child: Container(color: Colors.black, height: 2.0),
          ),
          brightness: Brightness.light,
          centerTitle: true,
          elevation: 0.0,
          leading: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            child: WINELeadingImageButton(
              imagePath: 'assets/img/back_button.png',
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
          title: const Text(
            'SETTINGS',
            style: TextStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.w300),
          ),
        ),
      ),
      body: MultiBlocListener(
        listeners: _stgsListeners.listeners,
        child: BlocBuilder<SettingsAuthenticationBloc, SettingsAuthenticationState>(
          builder: (context, settingsAuthState) {
            return BlocBuilder<SettingsDatabaseBloc, SettingsDatabaseState>(
              builder: (context, settingsDbState) {
                return SafeArea(
                  child: Stack(
                    children: <Widget>[
                      ScrollConfiguration(
                        behavior: const ScrollBehavior(),
                        child: ListView(
                          children: <Widget>[
                            SettingsAccountSettings(session: settingsDbState.session),
                            const Padding(padding: EdgeInsets.symmetric(vertical: 10.0), child: SettingsAppVersion()),
                          ],
                        ),
                      ),
                      WINELoadingScreen(
                        vsync: this,
                        isLoading: settingsAuthState.isSigningOut || settingsDbState.isUpdating,
                      ),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
