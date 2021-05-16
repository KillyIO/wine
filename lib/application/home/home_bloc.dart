import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rustic/option.dart';
import 'package:rustic/result.dart';
import 'package:rustic/tuple.dart';
import 'package:wine/application/home/home_navigation/home_navigation_bloc.dart';
import 'package:wine/domain/core/core_failure.dart';
import 'package:wine/domain/series/series.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

/// @nodoc
@Environment('dev')
@Environment('prod')
@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  /// @nodoc
  HomeBloc(
    this._homeNavigationBloc,
  ) : super(HomeState.initial());

  /// @nodoc
  final HomeNavigationBloc _homeNavigationBloc;

  late StreamSubscription _homeNavigationBlocSubscription;

  @override
  Stream<HomeState> mapEventToState(
    HomeEvent event,
  ) async* {
    yield* event.map(
      initBloc: (value) async* {
        _homeNavigationBlocSubscription =
            _homeNavigationBloc.stream.listen((homeNavigationState) {
          switch (homeNavigationState.currentPageViewIdx) {
            case 0:
              if (state.topSeriesList.isEmpty) {
                add(const HomeEvent.loadTopSeries());
              }
              break;
            case 1:
              if (state.newSeriesList.isEmpty) {
                add(const HomeEvent.loadNewSeries());
              }
              break;
            default:
          }
        });
      },
      loadNewSeries: (_) async* {},
      loadSeriesByGenre: (value) async* {},
      loadSeriesByLanguage: (value) async* {},
      loadSeriesByTime: (value) async* {},
      loadTopSeries: (_) async* {},
    );
  }

  @override
  Future<void> close() {
    _homeNavigationBlocSubscription.cancel();
    return super.close();
  }
}
