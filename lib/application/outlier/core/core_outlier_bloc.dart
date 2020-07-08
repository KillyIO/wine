import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_device_locale/flutter_device_locale.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'core_outlier_event.dart';
part 'core_outlier_state.dart';

part 'core_outlier_bloc.freezed.dart';

@injectable
class CoreOutlierBloc extends Bloc<CoreOutlierEvent, CoreOutlierState> {
  CoreOutlierBloc() : super(CoreOutlierState.initial());

  @override
  Stream<CoreOutlierState> mapEventToState(CoreOutlierEvent event) async* {
    if (event is AppLaunchedEVT) {
      final String currentLocale = (await DeviceLocale.getCurrentLocale()).toString();

      yield state.copyWith(deviceLocale: currentLocale);
    }
  }
}
