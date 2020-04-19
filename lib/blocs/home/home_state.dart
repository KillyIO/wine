part of 'home_bloc.dart';

abstract class HomeState extends Equatable {
  const HomeState();
}

class HomeInitial extends HomeState {
  @override
  List<Object> get props => [];
}

class STEOpeningDrawer extends HomeState {
  @override
  List<Object> get props => null;
}

class STEDrawerOpened extends HomeState {
  final bool openDrawer;

  STEDrawerOpened({this.openDrawer});

  @override
  List<Object> get props => [openDrawer];
}

class STEOpeningCreateSeries extends HomeState {
  @override
  List<Object> get props => null;
}

class STECreateSeriesOpened extends HomeState {
  final bool openCreateSeries;

  STECreateSeriesOpened({this.openCreateSeries});

  @override
  List<Object> get props => [openCreateSeries];
}

class STEClosingCreateSeries extends HomeState {
  @override
  List<Object> get props => null;
}

class STECreateSeriesClosed extends HomeState {
  final bool openCreateSeries;

  STECreateSeriesClosed({this.openCreateSeries});

  @override
  List<Object> get props => [openCreateSeries];
}

class STEHomeError extends HomeState {
  final error;

  STEHomeError({@required this.error});

  @override
  List<Object> get props => [error];

  @override
  String toString() => 'error: $error';
}
