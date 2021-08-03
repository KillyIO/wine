import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/settings/settings_bloc.dart';

import 'package:wine/presentation/core/buttons/asset_button.dart';
import 'package:wine/presentation/settings/settings_layout.dart';
import 'package:wine/utils/assets/icons.dart';
import 'package:wine/utils/themes.dart';

/// @nodoc
class SettingsPage extends StatefulWidget {
  /// @nodoc
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  void initState() {
    super.initState();

    context.read<SettingsBloc>().add(const SettingsEvent.initBloc());
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: lightTheme,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(41.5),
          child: AppBar(
            backgroundColor: Colors.transparent,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(0),
              child: Container(
                color: Colors.black,
                height: 2,
              ),
            ),
            brightness: Brightness.light,
            centerTitle: true,
            elevation: 0,
            leading: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5,
              ),
              child: AssetButton(
                imagePath: backIcon,
                onPressed: context.router.root.pop,
              ),
            ),
            title: const Text(
              'SETTINGS',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ),
        body: const SettingsLayout(),
      ),
    );
  }
}
