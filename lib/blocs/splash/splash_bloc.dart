import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  @override
  SplashState get initialState => SplashInitial();

  @override
  Stream<SplashState> mapEventToState(
    SplashEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
