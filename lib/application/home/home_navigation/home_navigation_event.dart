part of 'home_navigation_bloc.dart';

/// @nodoc
@freezed
class HomeNavigationEvent with _$HomeNavigationEvent {
  /// @nodoc
  const factory HomeNavigationEvent.leftDrawerIconPressed() =
      LeftDrawerIconPressed;

  /// @nodoc
  const factory HomeNavigationEvent.pageViewIndexChanged(int index) =
      PageViewIndexChanged;

  /// @nodoc
  const factory HomeNavigationEvent.rightDrawerIconPressed() =
      RightDrawerIconPressed;
}
