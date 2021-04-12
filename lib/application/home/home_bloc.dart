import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wine/application/home/home_navigation/home_navigation_bloc.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

/// @nodoc
@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  /// @nodoc
  HomeBloc(
    this._homeNavigationBloc,
  ) : super(HomeState.initial());

  /// @nodoc
  final HomeNavigationBloc _homeNavigationBloc;

  StreamSubscription _homeNavigationBlocSubscription;

  @override
  Stream<HomeState> mapEventToState(
    HomeEvent event,
  ) async* {
    yield* event.map(
      homePageLaunched: (value) async* {
        _homeNavigationBlocSubscription =
            _homeNavigationBloc.listen((homeNavigationState) {
          switch (homeNavigationState.currentPageViewIdx) {
            case 0:
              break;
            case 1:
              break;
            default:
          }
        });
      },
      loadSeriesByGenre: (value) async* {},
      loadSeriesByLanguage: (value) async* {},
      loadSeriesByTime: (value) async* {},
    );
  }

  @override
  Future<void> close() {
    _homeNavigationBlocSubscription?.cancel();
    return super.close();
  }
}
