part of 'home_navigation_bloc.dart';

@freezed
abstract class HomeNavigationState with _$HomeNavigationState {
  const factory HomeNavigationState({
    @required bool isMenuOpen,
    @required bool isNewSeriesPageOpen,
    @required double initialPosition,
    @required double distance,
  }) = _HomeNavigationState;

  factory HomeNavigationState.initial() => const HomeNavigationState(
        isMenuOpen: false,
        isNewSeriesPageOpen: false,
        initialPosition: 0.0,
        distance: 0.0,
      );
}
