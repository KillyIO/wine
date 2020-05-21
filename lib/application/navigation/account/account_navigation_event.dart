part of 'account_navigation_bloc.dart';

@freezed
abstract class AccountNavigationEvent with _$AccountNavigationEvent {
  const factory AccountNavigationEvent.accountPageLaunched({
    @required BuildContext context,
  }) = AccountPageLaunched;
  const factory AccountNavigationEvent.pageViewIndexChanged({
    @required int index,
  }) = PageViewIndexChanged;
  const factory AccountNavigationEvent.verticalNavbarIndexChanged({
    @required int index,
  }) = VerticalNavbarIndexChanged;
  const factory AccountNavigationEvent.resetAccountNavigationBloc() =
      ResetAccountNavigationBloc;
}
