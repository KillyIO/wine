import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/other/settings/settings_other_bloc.dart';

/// @nodoc
class SettingsAppVersion extends StatelessWidget {
  /// @nodoc
  const SettingsAppVersion({
    Key key,
    this.appName,
    this.appVersion,
  }) : super(key: key);

  /// @nodoc
  final String appName;

  /// @nodoc
  final String appVersion;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsOtherBloc, SettingsOtherState>(
      builder: (context, settingsOtherState) {
        return Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 5.0),
              child: Text(
                // ignore: lines_longer_than_80_chars
                '${settingsOtherState.appName} v${settingsOtherState.appVersion}',
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 15.0,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            const Text(
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
