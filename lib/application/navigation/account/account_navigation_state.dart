part of 'account_navigation_bloc.dart';

@freezed
abstract class AccountNavigationState with _$AccountNavigationState {
  const factory AccountNavigationState({
    @required int currentPageViewIdx,
    @required int currentVerticalNavbarIdx,
    @required List<String> pageViewNavbarItems,
    @required List<String> verticalNavbarItems,
  }) = _AccountSettingsState;

  factory AccountNavigationState.initial() => const AccountNavigationState(
        currentPageViewIdx: 0,
        currentVerticalNavbarIdx: 0,
        pageViewNavbarItems: <String>[],
        verticalNavbarItems: <String>[],
      );
}
