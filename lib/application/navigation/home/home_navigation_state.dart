part of 'home_navigation_bloc.dart';

@freezed
abstract class HomeNavigationState with _$HomeNavigationState {
  const factory HomeNavigationState({
    @required bool isDrawerOpen,
    @required bool isNewSeriesPageOpen,
    @required int currentPageViewIdx,
    @required List<String> pageViewNavbarItems,
  }) = _HomeNavigationState;

  factory HomeNavigationState.initial() => const HomeNavigationState(
        currentPageViewIdx: 0,
        isDrawerOpen: false,
        isNewSeriesPageOpen: false,
        pageViewNavbarItems: <String>[],
      );
}
