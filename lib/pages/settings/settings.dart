import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_info/package_info.dart';
import 'package:wine/blocs/settings/settings_bloc.dart';
import 'package:wine/pages/settings/widgets/account_settings.dart';
import 'package:wine/pages/settings/widgets/app_version.dart';
import 'package:wine/repositories/local_storage_repository.dart';
import 'package:wine/utils/themes.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final LocalStorageRepository _localStorageRepository =
      LocalStorageRepository();

  String _appName = '';
  String _appVersion = '';

  @override
  void initState() {
    _getPackageInfo();
    super.initState();
  }

  void _getPackageInfo() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();

    setState(() {
      _appName = packageInfo.appName;
      _appVersion = packageInfo.version;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(41.5),
          child: AppBar(
            backgroundColor: Colors.transparent,
            bottom: PreferredSize(
              child: Container(
                color: Colors.black,
                height: 2.0,
              ),
              preferredSize: Size.fromHeight(0.0),
            ),
            brightness: Brightness.light,
            centerTitle: true,
            elevation: 0.0,
            leading: Padding(
              padding: const EdgeInsets.only(bottom: 5.0, left: 10.0, top: 5.0),
              child: GestureDetector(
                child: Image.asset(
                  'assets/img/back_button.png',
                  fit: BoxFit.contain,
                ),
                onTap: () => Navigator.of(context).pop(),
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
        body: BlocListener<SettingsBloc, SettingsState>(
          listener: (context, state) {
            if (state is STELoggedOut) {
              Navigator.of(context)
                  .pushNamedAndRemoveUntil('/splash', ModalRoute.withName('/'));
            }
          },
          child: BlocBuilder<SettingsBloc, SettingsState>(
            builder: (context, state) {
              return SafeArea(
                child: ScrollConfiguration(
                  behavior: ScrollBehavior(),
                  child: ListView(
                    children: <Widget>[
                      AccountSettings(
                        localStorageRepository: _localStorageRepository,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: AppVersion(
                            appName: _appName, appVersion: _appVersion),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
      value: Themes.wineLightTheme(),
    );
  }
}
