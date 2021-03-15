import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_navigation_event.dart';
part 'home_navigation_state.dart';
part 'home_navigation_bloc.freezed.dart';

/// @nodoc
@injectable
class HomeNavigationBloc
    extends Bloc<HomeNavigationEvent, HomeNavigationState> {
  /// @nodoc
  HomeNavigationBloc() : super(const HomeNavigationState.initial());

  @override
  Stream<HomeNavigationState> mapEventToState(
    HomeNavigationEvent event,
  ) async* {
    yield* event.map(
      leftDrawerIconPressed: (_) async* {},
      pageViewIndexChanged: (value) async* {},
      rightDrawerIconPressed: (_) async* {},
    );
  }
}
