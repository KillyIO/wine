import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/outlier/settings/settings_outlier_bloc.dart';

class SettingsAppVersion extends StatelessWidget {
  final String appName;
  final String appVersion;

  const SettingsAppVersion({
    Key key,
    this.appName,
    this.appVersion,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsOutlierBloc, SettingsOutlierState>(
      builder: (context, settingsOutlierState) {
        return Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 5.0),
              child: Text(
                '${settingsOutlierState.appName} v${settingsOutlierState.appVersion}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.0,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            Text(
              'Made in Montpellier',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15.0,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        );
      },
    );
  }
}
