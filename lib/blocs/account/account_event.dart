part of 'account_bloc.dart';

abstract class AccountEvent extends Equatable {
  const AccountEvent();
}

class EVTOnSignInWithGoogleClicked extends AccountEvent {
  @override
  List<Object> get props => null;
}

class EVTOnSubmitUsernameClicked extends AccountEvent {
  final String username;

  EVTOnSubmitUsernameClicked({@required this.username});

  @override
  List<Object> get props => [username];

  @override
  String toString() => 'username: $username';
}

class EVTOnSignUpClicked extends AccountEvent {
  final String email;
  final String password;
  final String confirmPassword;
  final String username;

  EVTOnSignUpClicked({
    @required this.email,
    @required this.password,
    @required this.confirmPassword,
    @required this.username,
  });

  @override
  List<Object> get props => [email, password, confirmPassword, username];

  @override
  String toString() => '''
    email: $email,
    password: $password,
    confirmPassword: $confirmPassword,
    username: $username,
  ''';
}

class EVTOnLogInClicked extends AccountEvent {
  final String email;
  final String password;

  EVTOnLogInClicked({
    @required this.email,
    @required this.password,
  });

  @override
  List<Object> get props => [email, password];

  @override
  String toString() => '''
    email: $email,
    password: $password,
  ''';
}

class EVTOnEmailNotVerified extends AccountEvent {
  final String sessionUid;

  EVTOnEmailNotVerified({@required this.sessionUid});

  @override
  List<Object> get props => [sessionUid];

  @override
  String toString() => 'sessionUid: $sessionUid';
}
