import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:package_info/package_info.dart';

part 'settings_outlier_event.dart';
part 'settings_outlier_state.dart';

part 'settings_outlier_bloc.freezed.dart';

@injectable
class SettingsOutlierBloc extends Bloc<SettingsOutlierEvent, SettingsOutlierState> {
  @override
  SettingsOutlierState get initialState => SettingsOutlierState.initial();

  @override
  Stream<SettingsOutlierState> mapEventToState(
    SettingsOutlierEvent event,
  ) async* {
    if (event is GetAppDetailsEVT) {
      final PackageInfo packageInfo = await PackageInfo.fromPlatform();

      yield state.copyWith(appName: packageInfo.appName, appVersion: packageInfo.version);
    }
  }
}
