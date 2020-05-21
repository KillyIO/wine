part of 'account_navigation_bloc.dart';

@freezed
abstract class AccountNavigationState with _$AccountNavigationState {
  const factory AccountNavigationState({
    @required List<String> pageViewNavbarItems,
    @required List<String> verticalNavbarItems,
    @required int currentPageViewIdx,
    @required int currentVerticalNavbarIdx,
  }) = _AccountSettingsState;

  factory AccountNavigationState.initial() => const AccountNavigationState(
        pageViewNavbarItems: <String>[],
        verticalNavbarItems: <String>[],
        currentPageViewIdx: 0,
        currentVerticalNavbarIdx: 0,
      );
}
