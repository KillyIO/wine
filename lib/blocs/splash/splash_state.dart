part of 'splash_bloc.dart';

abstract class SplashState extends Equatable {
  const SplashState();
}

class SplashInitial extends SplashState {
  @override
  List<Object> get props => [];
}

class STENavigating extends SplashState {
  final String route;

  STENavigating({@required this.route});

  @override
  List<Object> get props => [route];

  @override
  String toString() => 'route: $route';
}

class STENavigated extends SplashState {
  @override
  List<Object> get props => null;
}

class STESplashError extends SplashState {
  final error;

  STESplashError({@required this.error});

  @override
  List<Object> get props => [error];

  @override
  String toString() => 'error: $error';
}
