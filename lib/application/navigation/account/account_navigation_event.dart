part of 'account_navigation_bloc.dart';

/// @nodoc
@freezed
abstract class AccountNavigationEvent with _$AccountNavigationEvent {
  /// @nodoc
  const factory AccountNavigationEvent.pageViewIndexChangedEVT(int index) =
      PageViewIndexChangedEVT;

  /// @nodoc
  const factory AccountNavigationEvent.resetBlocEVT() = ResetBlocEVT;

  /// @nodoc
  const factory AccountNavigationEvent.verticalNavbarIndexChangedEVT(
    int index,
  ) = VerticalNavbarIndexChangedEVT;
}
