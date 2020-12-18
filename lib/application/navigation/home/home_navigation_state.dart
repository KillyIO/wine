part of 'home_navigation_bloc.dart';

/// @nodoc
@freezed
abstract class HomeNavigationState with _$HomeNavigationState {
  /// @nodoc
  const factory HomeNavigationState({
    @required bool isLeftDrawerOpen,
    @required bool isRightDrawerOpen,
    @required int currentPageViewIdx,
  }) = _HomeNavigationState;

  /// @nodoc
  factory HomeNavigationState.initial() => const HomeNavigationState(
        currentPageViewIdx: 0,
        isLeftDrawerOpen: false,
        isRightDrawerOpen: false,
      );
}
