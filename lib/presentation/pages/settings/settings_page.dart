import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_info/package_info.dart';
import 'package:sailor/sailor.dart';
import 'package:wine/application/authentication/core/core_authentication_bloc.dart';
import 'package:wine/application/authentication/settings/settings_authentication_bloc.dart';
import 'package:wine/application/database/settings/settings_database_bloc.dart';
import 'package:wine/application/navigation/home/home_navigation_bloc.dart';
import 'package:wine/presentation/pages/settings/widgets/account_settings.dart';
import 'package:wine/presentation/pages/settings/widgets/app_version.dart';
import 'package:wine/presentation/widgets/custom_show_dialog.dart';
import 'package:wine/presentation/widgets/error_dialog.dart';
import 'package:wine/routes.dart';
import 'package:wine/utils/constants.dart';
import 'package:wine/utils/palettes.dart';
import 'package:wine/utils/themes.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage>
    with TickerProviderStateMixin {
  String _appName = '';
  String _appVersion = '';

  @override
  void initState() {
    context.bloc<CoreAuthenticationBloc>().add(const PageLaunched());
    context.bloc<SettingsDatabaseBloc>().add(const SettingsLaunched());
    _getPackageInfo();
    super.initState();
  }

  Future<void> _getPackageInfo() async {
    final PackageInfo packageInfo = await PackageInfo.fromPlatform();

    setState(() {
      _appName = packageInfo.appName;
      _appVersion = packageInfo.version;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: Themes.wineLightTheme(),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(41.5),
          child: AppBar(
            backgroundColor: Colors.transparent,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(0.0),
              child: Container(
                color: Colors.black,
                height: 2.0,
              ),
            ),
            brightness: Brightness.light,
            centerTitle: true,
            elevation: 0.0,
            leading: Padding(
              padding: const EdgeInsets.only(bottom: 5.0, left: 10.0, top: 5.0),
              child: GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: Image.asset(
                  'assets/img/back_button.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            title: Text(
              'SETTINGS',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ),
        body: MultiBlocListener(
          listeners: [
            BlocListener<SettingsAuthenticationBloc,
                SettingsAuthenticationState>(
              listener: (context, state) {
                state.authenticationFailureOrSuccessOption.fold(
                  () {},
                  (some) => some.fold(
                    (failure) => failure.map(
                      cancelledByUser: (_) {},
                      serverError: (_) => customShowDialog(
                        context: context,
                        builder: (_) => ErrorDialog(
                          message: 'An unexpected error occured!',
                          onPressed: () => Navigator.of(context).pop(true),
                        ),
                      ),
                      emailAlreadyInUse: (_) {},
                      invalidEmailAndPasswordCombination: (_) {},
                      usernameAlreadyInUse: (_) {},
                      unableToSignOut: (_) => customShowDialog(
                        context: context,
                        builder: (_) => ErrorDialog(
                          message:
                              'We were unable to sign you out. Please retry later.',
                          onPressed: () => Navigator.of(context).pop(true),
                        ),
                      ),
                    ),
                    (right) => context
                        .bloc<SettingsDatabaseBloc>()
                        .add(const UserSignedOut()),
                  ),
                );
              },
            ),
            BlocListener<SettingsDatabaseBloc, SettingsDatabaseState>(
              listener: (context, state) {
                if (state.isSessionDeleted) {
                  sailor.navigate(
                    Constants.homeRoute,
                    navigationType: NavigationType.pushAndRemoveUntil,
                    removeUntilPredicate: (_) => false,
                  );
                  context
                      .bloc<CoreAuthenticationBloc>()
                      .add(const PageLaunched());
                  context
                      .bloc<HomeNavigationBloc>()
                      .add(const ResetHomeNavigationBloc());
                  context
                      .bloc<SettingsDatabaseBloc>()
                      .add(const ResetSettingsDatabaseBloc());
                }
              },
            ),
          ],
          child: BlocBuilder<CoreAuthenticationBloc, CoreAuthenticationState>(
            builder: (context, coreState) {
              return BlocBuilder<SettingsAuthenticationBloc,
                  SettingsAuthenticationState>(
                builder: (context, authenticationState) {
                  return BlocBuilder<SettingsDatabaseBloc,
                      SettingsDatabaseState>(
                    builder: (context, databaseState) {
                      return SafeArea(
                        child: Stack(
                          children: <Widget>[
                            ScrollConfiguration(
                              behavior: const ScrollBehavior(),
                              child: ListView(
                                children: <Widget>[
                                  AccountSettings(
                                    isAnonymous: coreState.isAnonymous,
                                    session: databaseState.session,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10.0),
                                    child: AppVersion(
                                      appName: _appName,
                                      appVersion: _appVersion,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: AnimatedSize(
                                duration: const Duration(milliseconds: 200),
                                vsync: this,
                                child: Container(
                                  color: Colors.white,
                                  width: MediaQuery.of(context).size.width,
                                  height: authenticationState.isSigningOut ||
                                          databaseState.isUpdating
                                      ? MediaQuery.of(context).size.height
                                      : 0.0,
                                  child: Center(
                                    child: CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        Palettes.darkCyanBlue,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
