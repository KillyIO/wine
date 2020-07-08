part of 'home_navigation_bloc.dart';

@freezed
abstract class HomeNavigationState with _$HomeNavigationState {
  const factory HomeNavigationState({
    @required bool isLeftDrawerOpen,
    @required bool isRightDrawerOpen,
    @required bool isNewSeriesPageOpen,
    @required int currentPageViewIdx,
    @required List<String> pageViewNavbarItems,
  }) = _HomeNavigationState;

  factory HomeNavigationState.initial() => const HomeNavigationState(
        currentPageViewIdx: 0,
        isLeftDrawerOpen: false,
        isRightDrawerOpen: false,
        isNewSeriesPageOpen: false,
        pageViewNavbarItems: <String>[],
      );
}
