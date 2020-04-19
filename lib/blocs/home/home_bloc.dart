import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  @override
  HomeState get initialState => HomeInitial();

  @override
  Stream<HomeState> mapEventToState(
    HomeEvent event,
  ) async* {
    if (event is EVTOnDrawerClicked) {
      yield STEOpeningDrawer();
      yield STEDrawerOpened(openDrawer: event.openDrawer);
    }
    if (event is EVTOnCreateSeriesClicked) {
      yield STEOpeningCreateSeries();
      yield STECreateSeriesOpened(openCreateSeries: true);
    }
    if (event is EVTOnCloseCreateSeries) {
      yield STEClosingCreateSeries();
      yield STECreateSeriesClosed(openCreateSeries: false);
    }
  }
}
