import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_device_locale/flutter_device_locale.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'core_miscellaneous_bloc.freezed.dart';
part 'core_miscellaneous_event.dart';
part 'core_miscellaneous_state.dart';

/// @nodoc
@injectable
class CoreMiscellaneousBloc
    extends Bloc<CoreMiscellaneousEvent, CoreMiscellaneousState> {
  /// @nodoc
  CoreMiscellaneousBloc() : super(CoreMiscellaneousState.initial());

  @override
  Stream<CoreMiscellaneousState> mapEventToState(
      CoreMiscellaneousEvent event) async* {
    if (event is AppLaunched) {
      final currentLocale = (await DeviceLocale.getCurrentLocale()).toString();

      yield state.copyWith(deviceLocale: currentLocale);
    }
  }
}
