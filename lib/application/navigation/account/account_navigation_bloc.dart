import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:wine/utils/methods.dart';

part 'account_navigation_event.dart';
part 'account_navigation_state.dart';

part 'account_navigation_bloc.freezed.dart';

@injectable
class AccountNavigationBloc extends Bloc<AccountNavigationEvent, AccountNavigationState> {
  AccountNavigationBloc() : super(AccountNavigationState.initial());

  @override
  Stream<AccountNavigationState> mapEventToState(AccountNavigationEvent event) async* {
    yield* event.map(
      accountPageLaunchedEVT: (event) async* {
        yield state.copyWith(
          pageViewNavbarItems: Methods.getAccountNavbarItems(event.context),
          verticalNavbarItems: Methods.getAccountVerticalNavbarItems(event.context),
        );
      },
      pageViewIndexChangedEVT: (event) async* {
        if (state.currentPageViewIdx != event.index) {
          int newIdx = event.index;
          if (event.index > state.pageViewNavbarItems.length - 1) {
            newIdx = 0;
          }
          if (event.index < 0) {
            newIdx = state.pageViewNavbarItems.length - 1;
          }
          yield state.copyWith(currentPageViewIdx: newIdx);
        }
      },
      resetBlocEVT: (event) async* {
        yield state.copyWith(currentPageViewIdx: 0, currentVerticalNavbarIdx: 0);
      },
      verticalNavbarIndexChangedEVT: (event) async* {
        yield state.copyWith(currentVerticalNavbarIdx: event.index);
      },
    );
  }
}
