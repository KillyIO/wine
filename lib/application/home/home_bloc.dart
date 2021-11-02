import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:oxidized/oxidized.dart';
import 'package:oxidized/oxidized.dart';
import 'package:oxidized/oxidized.dart';
import 'package:wine/application/home/home_navigation/home_navigation_bloc.dart';
import 'package:wine/domain/core/core_failure.dart';
import 'package:wine/domain/series/series.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

/// @nodoc
@Environment(Environment.dev)
@Environment(Environment.prod)
@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  /// @nodoc
  HomeBloc(
    this._homeNavigationBloc,
  ) : super(HomeState.initial()) {
    on<InitBloc>((value, emit) {
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
    });
    on<LoadNewSeries>((_, emit) {});
    on<LoadSeriesByGenre>((value, emit) {});
    on<LoadSeriesByLanguage>((value, emit) {});
    on<LoadSeriesByTime>((value, emit) {});
    on<LoadTopSeries>((_, emit) {});
  }

  /// @nodoc
  final HomeNavigationBloc _homeNavigationBloc;

  late StreamSubscription _homeNavigationBlocSubscription;

  @override
  Future<void> close() {
    _homeNavigationBlocSubscription.cancel();
    return super.close();
  }
}
