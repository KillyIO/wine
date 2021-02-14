import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:package_info/package_info.dart';

part 'settings_miscellaneous_bloc.freezed.dart';
part 'settings_miscellaneous_event.dart';
part 'settings_miscellaneous_state.dart';

/// @nodoc
@injectable
class SettingsMiscellaneousBloc
    extends Bloc<SettingsMiscellaneousEvent, SettingsMiscellaneousState> {
  /// @nodoc
  SettingsMiscellaneousBloc() : super(SettingsMiscellaneousState.initial());

  @override
  Stream<SettingsMiscellaneousState> mapEventToState(
      SettingsMiscellaneousEvent event) async* {
    if (event is SettingsLaunchedEvent) {
      final packageInfo = await PackageInfo.fromPlatform();

      yield state.copyWith(
        appName: packageInfo.appName,
        appVersion: packageInfo.version,
      );
    }
  }
}
