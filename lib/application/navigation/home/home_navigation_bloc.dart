import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'home_navigation_event.dart';
part 'home_navigation_state.dart';

part 'home_navigation_bloc.freezed.dart';

@injectable
class HomeNavigationBloc
    extends Bloc<HomeNavigationEvent, HomeNavigationState> {
  @override
  HomeNavigationState get initialState => HomeNavigationState.initial();

  @override
  Stream<HomeNavigationState> mapEventToState(
    HomeNavigationEvent event,
  ) async* {
    yield* event.map(
      menuIconPressed: (event) async* {
        yield state.copyWith(
          isMenuOpen: !event.isMenuOpen,
        );
      },
      newSeriesIconPressed: (event) async* {
        yield state.copyWith(
          isNewSeriesPageOpen: event.isNewSeriesPageOpen,
        );
      },
      menuDragStarted: (event) async* {
        yield state.copyWith(
          initialPosition: event.initialPosition,
        );
      },
      menuDragUpdated: (event) async* {
        yield state.copyWith(
          distance: event.distance,
        );
      },
      resetHomeNavigationBloc: (event) async* {
        yield state.copyWith(
          isMenuOpen: false,
          isNewSeriesPageOpen: false,
          initialPosition: 0.0,
          distance: 0.0,
        );
      },
    );
  }
}
