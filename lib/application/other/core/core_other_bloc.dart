import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_device_locale/flutter_device_locale.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'core_other_bloc.freezed.dart';
part 'core_other_event.dart';
part 'core_other_state.dart';

/// @nodoc
@injectable
class CoreOtherBloc extends Bloc<CoreOtherEvent, CoreOtherState> {
  /// @nodoc
  CoreOtherBloc() : super(CoreOtherState.initial());

  @override
  Stream<CoreOtherState> mapEventToState(CoreOtherEvent event) async* {
    if (event is AppLaunchedEVT) {
      final currentLocale = (await DeviceLocale.getCurrentLocale()).toString();

      yield state.copyWith(deviceLocale: currentLocale);
    }
  }
}
