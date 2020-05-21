import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:wine/utils/methods.dart';

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
      homePageLaunched: (event) async* {
        yield state.copyWith(
          pageViewNavbarItems: Methods.getHomeMenuItems(event.context),
        );
      },
      drawerIconPressed: (event) async* {
        yield state.copyWith(
          isDrawerOpen: !event.isDrawerOpen,
        );
      },
      newSeriesIconPressed: (event) async* {
        yield state.copyWith(
          isNewSeriesPageOpen: event.isNewSeriesPageOpen,
        );
      },
      pageViewIndexChanged: (event) async* {
        if (state.currentPageViewIdx != event.index) {
          int newIdx = event.index;
          if (event.index > state.pageViewNavbarItems.length - 1) {
            newIdx = 0;
          }
          if (event.index < 0) {
            newIdx = state.pageViewNavbarItems.length - 1;
          }
          yield state.copyWith(
            currentPageViewIdx: newIdx,
          );
        }
      },
      resetHomeNavigationBloc: (event) async* {
        yield state.copyWith(
          isDrawerOpen: false,
          isNewSeriesPageOpen: false,
          currentPageViewIdx: 0,
        );
      },
    );
  }
}
