import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sailor/sailor.dart';
import 'package:wine/application/authentication/core/core_authentication_bloc.dart';
import 'package:wine/application/authentication/settings/settings_authentication_bloc.dart';
import 'package:wine/application/database/settings/settings_database_bloc.dart';
import 'package:wine/application/navigation/home/home_navigation_bloc.dart';
import 'package:wine/application/outlier/settings/settings_outlier_bloc.dart';
import 'package:wine/presentation/pages/settings/widgets/account_settings.dart';
import 'package:wine/presentation/pages/settings/widgets/app_version.dart';
import 'package:wine/presentation/widgets/custom_show_dialog.dart';
import 'package:wine/presentation/widgets/error_dialog.dart';
import 'package:wine/routes.dart';
import 'package:wine/utils/constants.dart';
import 'package:wine/utils/palettes.dart';

class SettingsLayout extends StatefulWidget {
  @override
  _SettingsLayoutState createState() => _SettingsLayoutState();
}

class _SettingsLayoutState extends State<SettingsLayout>
    with TickerProviderStateMixin {
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
            child: Container(
              color: Colors.black,
              height: 2.0,
            ),
          ),
          brightness: Brightness.light,
          centerTitle: true,
          elevation: 0.0,
          leading: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10.0,
              vertical: 5.0,
            ),
            child: GestureDetector(
              onTap: () => Navigator.of(context).pop(),
              child: Image.asset(
                'assets/img/back_button.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
          title: const Text(
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
          BlocListener<SettingsAuthenticationBloc, SettingsAuthenticationState>(
            listener: (context, state) {
              state.authenticationFailureOrSuccessOption.fold(
                () {},
                (some) => some.fold(
                  (failure) => failure.maybeMap(
                    serverError: (_) => customShowDialog(
                      context: context,
                      builder: (_) => ErrorDialog(
                        message: 'An unexpected error occured!',
                        onPressed: () => Navigator.of(context).pop(true),
                      ),
                    ),
                    unableToSignOut: (_) => customShowDialog(
                      context: context,
                      builder: (_) => ErrorDialog(
                        message:
                            'We were unable to sign you out. Please retry later.',
                        onPressed: () => Navigator.of(context).pop(true),
                      ),
                    ),
                    orElse: () {},
                  ),
                  (right) => context
                      .bloc<SettingsDatabaseBloc>()
                      .add(const SettingsDatabaseEvent.userSignedOut()),
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
                context.bloc<SettingsDatabaseBloc>().add(
                    const SettingsDatabaseEvent.resetSettingsDatabaseBloc());
                context.bloc<CoreAuthenticationBloc>().add(
                    const CoreAuthenticationEvent.getUserAnonymousStatus());
                context
                    .bloc<HomeNavigationBloc>()
                    .add(const HomeNavigationEvent.resetHomeNavigationBloc());
              }
            },
          ),
        ],
        child: BlocBuilder<CoreAuthenticationBloc, CoreAuthenticationState>(
          builder: (context, coreAuthState) {
            return BlocBuilder<SettingsOutlierBloc, SettingsOutlierState>(
              builder: (context, settingsOutlierState) {
                return BlocBuilder<SettingsAuthenticationBloc,
                    SettingsAuthenticationState>(
                  builder: (context, settingsAuthState) {
                    return BlocBuilder<SettingsDatabaseBloc,
                        SettingsDatabaseState>(
                      builder: (context, settingsDbState) {
                        return SafeArea(
                          child: Stack(
                            children: <Widget>[
                              ScrollConfiguration(
                                behavior: const ScrollBehavior(),
                                child: ListView(
                                  children: <Widget>[
                                    AccountSettings(
                                      isAnonymous: coreAuthState.isAnonymous,
                                      session: settingsDbState.session,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10.0),
                                      child: AppVersion(
                                        appName: settingsOutlierState.appName,
                                        appVersion:
                                            settingsOutlierState.appVersion,
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
                                    height: settingsAuthState.isSigningOut ||
                                            settingsDbState.isUpdating
                                        ? MediaQuery.of(context).size.height
                                        : 0.0,
                                    child: Center(
                                      child: CircularProgressIndicator(
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
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
            );
          },
        ),
      ),
    );
  }
}
