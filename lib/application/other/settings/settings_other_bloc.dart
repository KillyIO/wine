import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:package_info/package_info.dart';

part 'settings_other_bloc.freezed.dart';
part 'settings_other_event.dart';
part 'settings_other_state.dart';

/// @nodoc
@injectable
class SettingsOtherBloc extends Bloc<SettingsOtherEvent, SettingsOtherState> {
  /// @nodoc
  SettingsOtherBloc() : super(SettingsOtherState.initial());

  @override
  Stream<SettingsOtherState> mapEventToState(SettingsOtherEvent event) async* {
    if (event is GetAppDetailsEVT) {
      final packageInfo = await PackageInfo.fromPlatform();

      yield state.copyWith(
          appName: packageInfo.appName, appVersion: packageInfo.version);
    }
  }
}
