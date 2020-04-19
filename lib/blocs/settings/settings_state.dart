part of 'settings_bloc.dart';

abstract class SettingsState extends Equatable {
  const SettingsState();
}

class SettingsInitial extends SettingsState {
  @override
  List<Object> get props => [];
}

class STELoggingOut extends SettingsState {
  @override
  List<Object> get props => null;
}

class STELoggedOut extends SettingsState {
  @override
  List<Object> get props => null;
}

class STESettingsError extends SettingsState {
  final error;

  STESettingsError({@required this.error});

  @override
  List<Object> get props => [error];

  @override
  String toString() => 'error: $error';
}
