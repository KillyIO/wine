import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:oxidized/oxidized.dart';
import 'package:wine/domain/core/core_failure.dart';
import 'package:wine/domain/series/series.dart';
import 'package:wine/utils/constants/home.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

/// @nodoc
@Environment(Environment.dev)
@Environment(Environment.prod)
@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  /// @nodoc
  HomeBloc() : super(HomeState.initial()) {
    on<LoadNewSeries>((_, emit) {});
    on<LoadSeriesByGenre>((value, emit) {});
    on<LoadSeriesByLanguage>((value, emit) {});
    on<LoadSeriesByTime>((value, emit) {});
    on<LoadTopSeries>((_, emit) {});
    on<PageViewIndexChanged>((value, emit) {
      if (state.currentPageViewIdx != value.index) {
        var newIdx = value.index;
        if (value.index > homePageViewKeys.length - 1) {
          newIdx = 0;
        }
        if (value.index < 0) {
          newIdx = homePageViewKeys.length - 1;
        }
        emit(state.copyWith(
          currentPageViewIdx: newIdx,
          failure: Option.none(),
        ));

        switch (state.currentPageViewIdx) {
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
      }
    });
  }
}
