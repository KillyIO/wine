import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:wine/utils/constants/home.dart';

part 'home_navigation_bloc.freezed.dart';
part 'home_navigation_event.dart';
part 'home_navigation_state.dart';

/// @nodoc
@injectable
class HomeNavigationBloc
    extends Bloc<HomeNavigationEvent, HomeNavigationState> {
  /// @nodoc
  HomeNavigationBloc() : super(HomeNavigationState.initial());

  @override
  Stream<HomeNavigationState> mapEventToState(
      HomeNavigationEvent event) async* {
    yield* event.map(
      leftDrawerIconPressedEVT: (event) async* {
        yield state.copyWith(isLeftDrawerOpen: !state.isLeftDrawerOpen);
      },
      pageViewIndexChangedEVT: (event) async* {
        if (state.currentPageViewIdx != event.index) {
          var newIdx = event.index;
          if (event.index > homeNavbarKeys.length - 1) {
            newIdx = 0;
          }
          if (event.index < 0) {
            newIdx = homeNavbarKeys.length - 1;
          }
          yield state.copyWith(currentPageViewIdx: newIdx);
        }
      },
      resetBlocEVT: (event) async* {
        yield state.copyWith(
          isLeftDrawerOpen: false,
          isRightDrawerOpen: false,
          currentPageViewIdx: 0,
        );
      },
      rightDrawerIconPressedEVT: (event) async* {
        yield state.copyWith(isRightDrawerOpen: !state.isRightDrawerOpen);
      },
      willPopEVT: (event) async* {
        yield state.copyWith(
          isLeftDrawerOpen: false,
          isRightDrawerOpen: false,
        );
      },
    );
  }
}
