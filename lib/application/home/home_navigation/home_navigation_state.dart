part of 'home_navigation_bloc.dart';

/// @nodoc
@freezed
class HomeNavigationState with _$HomeNavigationState {
  /// @nodoc
  const factory HomeNavigationState({
    required int currentPageViewIdx,
    required bool isLeftDrawerOpen,
    required bool isRightDrawerOpen,
  }) = _HomeNavigationState;

  /// @nodoc
  factory HomeNavigationState.initial() => const HomeNavigationState(
        currentPageViewIdx: 0,
        isLeftDrawerOpen: false,
        isRightDrawerOpen: false,
      );
}
