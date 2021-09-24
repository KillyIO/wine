import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wine/utils/constants/home.dart';

part 'home_navigation_event.dart';
part 'home_navigation_state.dart';
part 'home_navigation_bloc.freezed.dart';

/// @nodoc
@Environment(Environment.dev)
@Environment(Environment.prod)
@injectable
class HomeNavigationBloc
    extends Bloc<HomeNavigationEvent, HomeNavigationState> {
  /// @nodoc
  HomeNavigationBloc() : super(HomeNavigationState.initial()) {
    on<PageViewIndexChanged>((value, emit) {
      if (state.currentPageViewIdx != value.index) {
        var newIdx = value.index;
        if (value.index > homePageViewKeys.length - 1) {
          newIdx = 0;
        }
        if (value.index < 0) {
          newIdx = homePageViewKeys.length - 1;
        }
        emit(state.copyWith(currentPageViewIdx: newIdx));
      }
    });
  }
}
