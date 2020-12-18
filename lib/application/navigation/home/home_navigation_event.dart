part of 'home_navigation_bloc.dart';

/// @nodoc
@freezed
abstract class HomeNavigationEvent with _$HomeNavigationEvent {
  /// @nodoc
  const factory HomeNavigationEvent.leftDrawerIconPressedEVT() =
      LeftDrawerIconPressedEVT;

  /// @nodoc
  const factory HomeNavigationEvent.pageViewIndexChangedEVT(int index) =
      PageViewIndexChangedEVT;

  /// @nodoc
  const factory HomeNavigationEvent.resetBlocEVT() = ResetBlocEVT;

  /// @nodoc
  const factory HomeNavigationEvent.rightDrawerIconPressedEVT() =
      RightDrawerIconPressedEVT;

  /// @nodoc
  const factory HomeNavigationEvent.willPopEVT() = WillPopEVT;
}
