part of 'account_navigation_bloc.dart';

@freezed
abstract class AccountNavigationEvent with _$AccountNavigationEvent {
  const factory AccountNavigationEvent.accountPageLaunchedEVT({
    @required BuildContext context,
  }) = AccountPageLaunchedEVT;
  const factory AccountNavigationEvent.pageViewIndexChangedEVT(int index) = PageViewIndexChangedEVT;
  const factory AccountNavigationEvent.resetBlocEVT() = ResetBlocEVT;
  const factory AccountNavigationEvent.verticalNavbarIndexChangedEVT(int index) = VerticalNavbarIndexChangedEVT;
}
