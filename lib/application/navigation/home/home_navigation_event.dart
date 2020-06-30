part of 'home_navigation_bloc.dart';

@freezed
abstract class HomeNavigationEvent with _$HomeNavigationEvent {
  const factory HomeNavigationEvent.drawerIconPressedEVT({@required bool isDrawerOpen}) = DrawerIconPressedEVT;
  const factory HomeNavigationEvent.homePageLaunchedEVT({BuildContext context}) = HomePageLaunchedEVT;
  const factory HomeNavigationEvent.newSeriesIconPressedEVT({
    @required bool isNewSeriesPageOpen,
  }) = NewSeriesIconPressedEVT;
  const factory HomeNavigationEvent.pageViewIndexChangedEVT({@required int index}) = PageViewIndexChangedEVT;
  const factory HomeNavigationEvent.resetBlocEVT() = ResetBlocEVT;
}
