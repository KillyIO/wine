part of 'home_navigation_bloc.dart';

/// @nodoc
@freezed
class HomeNavigationState with _$HomeNavigationState {
  /// @nodoc
  const factory HomeNavigationState({
    required int currentPageViewIdx,
  }) = _HomeNavigationState;

  /// @nodoc
  factory HomeNavigationState.initial() => const HomeNavigationState(
        currentPageViewIdx: 0,
      );
}
