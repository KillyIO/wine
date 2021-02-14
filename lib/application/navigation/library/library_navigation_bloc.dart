import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:wine/utils/constants/library.dart';

part 'library_navigation_bloc.freezed.dart';
part 'library_navigation_event.dart';
part 'library_navigation_state.dart';

/// @nodoc
@injectable
class LibraryNavigationBloc
    extends Bloc<LibraryNavigationEvent, LibraryNavigationState> {
  /// @nodoc
  LibraryNavigationBloc() : super(LibraryNavigationState.initial());

  @override
  Stream<LibraryNavigationState> mapEventToState(
    LibraryNavigationEvent event,
  ) async* {
    yield* event.map(
      pageViewIndexChangedEVT: (event) async* {
        if (state.currentPageViewIdx != event.index) {
          var newIdx = event.index;
          if (event.index > libraryHorizontalNavbarKeys.length - 1) {
            newIdx = 0;
          }
          if (event.index < 0) {
            newIdx = libraryHorizontalNavbarKeys.length - 1;
          }
          yield state.copyWith(currentPageViewIdx: newIdx);
        }
      },
      resetBlocEVT: (event) async* {
        yield state.copyWith(
          currentPageViewIdx: 0,
          currentVerticalNavbarIdx: 0,
        );
      },
      verticalNavbarIndexChangedEVT: (event) async* {
        yield state.copyWith(currentVerticalNavbarIdx: event.index);
      },
    );
  }
}
