part of 'home_navigation_bloc.dart';

@freezed
abstract class HomeNavigationEvent with _$HomeNavigationEvent {
  const factory HomeNavigationEvent.leftDrawerIconPressedEVT({@required bool isDrawerOpen}) = LeftDrawerIconPressedEVT;
  const factory HomeNavigationEvent.homePageLaunchedEVT({BuildContext context}) = HomePageLaunchedEVT;
  const factory HomeNavigationEvent.pageViewIndexChangedEVT({@required int index}) = PageViewIndexChangedEVT;
  const factory HomeNavigationEvent.resetBlocEVT() = ResetBlocEVT;
  const factory HomeNavigationEvent.rightDrawerIconPressedEVT({
    @required bool isDrawerOpen,
  }) = RightDrawerIconPressedEVT;
}
