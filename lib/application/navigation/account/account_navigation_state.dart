part of 'account_navigation_bloc.dart';

/// @nodoc
@freezed
abstract class AccountNavigationState with _$AccountNavigationState {
  /// @nodoc
  const factory AccountNavigationState({
    @required int currentPageViewIdx,
    @required int currentVerticalNavbarIdx,
  }) = _AccountNavigationState;

  /// @nodoc
  factory AccountNavigationState.initial() => const AccountNavigationState(
        currentPageViewIdx: 0,
        currentVerticalNavbarIdx: 0,
      );
}
