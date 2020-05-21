part of 'home_navigation_bloc.dart';

@freezed
abstract class HomeNavigationEvent with _$HomeNavigationEvent {
  const factory HomeNavigationEvent.homePageLaunched({
    BuildContext context,
  }) = HomePageLaunched;
  const factory HomeNavigationEvent.drawerIconPressed({
    @required bool isDrawerOpen,
  }) = DrawerIconPressed;
  const factory HomeNavigationEvent.newSeriesIconPressed({
    @required bool isNewSeriesPageOpen,
  }) = NewSeriesIconPressed;
  const factory HomeNavigationEvent.pageViewIndexChanged({
    @required int index,
  }) = PageViewIndexChanged;
  const factory HomeNavigationEvent.resetHomeNavigationBloc() =
      ResetHomeNavigationBloc;
}
