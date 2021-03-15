part of 'home_navigation_bloc.dart';

/// @nodoc
@freezed
abstract class HomeNavigationState with _$HomeNavigationState {
  /// @nodoc
  const factory HomeNavigationState.initial() = _Initial;

  /// @nodoc
  const factory HomeNavigationState.leftDrawerToggled(bool isOpen) =
      _LeftDrawerToggled;

  /// @nodoc
  const factory HomeNavigationState.pageViewChanged(int index) =
      _PageViewChanged;

  /// @nodoc
  const factory HomeNavigationState.processing() = _Processing;

  /// @nodoc
  const factory HomeNavigationState.rightDrawerToggled(bool isOpen) =
      _RightDrawerToggled;
}
