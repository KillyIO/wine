part of 'home_navigation_bloc.dart';

@freezed
abstract class HomeNavigationState with _$HomeNavigationState {
  const factory HomeNavigationState({
    @required bool isDrawerOpen,
    @required bool isNewSeriesPageOpen,
    @required List<String> pageViewNavbarItems,
    @required int currentPageViewIdx,
  }) = _HomeNavigationState;

  factory HomeNavigationState.initial() => const HomeNavigationState(
        isDrawerOpen: false,
        isNewSeriesPageOpen: false,
        pageViewNavbarItems: <String>[],
        currentPageViewIdx: 0,
      );
}
