part of 'account_bloc.dart';

abstract class AccountState extends Equatable {
  const AccountState();
}

class AccountInitial extends AccountState {
  @override
  List<Object> get props => [];
}

class STEAuthenticating extends AccountState {
  @override
  List<Object> get props => null;
}

class STENavigating extends AccountState {
  final String route;

  STENavigating({@required this.route});

  @override
  List<Object> get props => [route];

  @override
  String toString() => 'route: $route';
}

class STENavigated extends AccountState {
  @override
  List<Object> get props => null;
}

class STESubmittingUsername extends AccountState {
  @override
  List<Object> get props => null;
}

class STEUpdatedUsername extends AccountState {
  @override
  List<Object> get props => null;
}

class STEDisplayingEmailNotVerifiedDialog extends AccountState {
  @override
  List<Object> get props => null;
}

class STEEmailNotVerifiedDialogDismissed extends AccountState {
  @override
  List<Object> get props => null;
}

class STEAccountError extends AccountState {
  final error;

  STEAccountError({@required this.error});

  @override
  List<Object> get props => [error];

  @override
  String toString() => 'error: $error';
}
