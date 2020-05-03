part of 'home_navigation_bloc.dart';

@freezed
abstract class HomeNavigationEvent with _$HomeNavigationEvent {
  const factory HomeNavigationEvent.menuIconPressed({
    @required bool isMenuOpen,
  }) = MenuIconPressed;
  const factory HomeNavigationEvent.newSeriesIconPressed({
    @required bool isNewSeriesPageOpen,
  }) = NewSeriesIconPressed;
  const factory HomeNavigationEvent.menuDragStarted({
    @required double initialPosition,
  }) = MenuDragStarted;
  const factory HomeNavigationEvent.menuDragUpdated({
    @required double distance,
  }) = MenuDragUpdated;
  const factory HomeNavigationEvent.resetHomeNavigationBloc() =
      ResetHomeNavigationBloc;
}
