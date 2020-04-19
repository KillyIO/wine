part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();
}

class EVTOnDrawerClicked extends HomeEvent {
  final bool openDrawer;

  EVTOnDrawerClicked({this.openDrawer});

  @override
  List<Object> get props => [openDrawer];
}

class EVTOnCreateSeriesClicked extends HomeEvent {
  @override
  List<Object> get props => null;
}

class EVTOnCloseCreateSeries extends HomeEvent {
  @override
  List<Object> get props => null;
}
