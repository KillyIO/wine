import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_event.dart';
part 'splash_state.dart';
part 'splash_bloc.freezed.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(_Initial());

  @override
  Stream<SplashState> mapEventToState(
    SplashEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
