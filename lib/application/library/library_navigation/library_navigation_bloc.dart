import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'library_navigation_event.dart';
part 'library_navigation_state.dart';
part 'library_navigation_bloc.freezed.dart';

/// @nodoc
@Environment(Environment.dev)
@Environment(Environment.prod)
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
      pageViewIndexChanged: (value) async* {},
      verticalNavbarIndexChanged: (value) async* {},
    );
  }
}
