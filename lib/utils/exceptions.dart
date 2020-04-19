class UsernameAlreadyTakenException implements Exception {
  String message;

  UsernameAlreadyTakenException(
      [String message = 'This username is already taken.']) {
    this.message = message;
  }

  @override
  String toString() => 'message: $message';
}

class UsernameNotNullOrEmptyException implements Exception {
  String message;

  UsernameNotNullOrEmptyException(
      [String message = 'Username must not be null or empty.']) {
    this.message = message;
  }

  @override
  String toString() => 'message: $message';
}

class InvalidEmailException implements Exception {
  String message;

  InvalidEmailException(
      [String message = 'The email address entered is invalid.']) {
    this.message = message;
  }

  @override
  String toString() => 'message: $message';
}

class InvalidPasswordException implements Exception {
  String message;

  InvalidPasswordException(
      [String message = 'The password entered is invalid.']) {
    this.message = message;
  }

  @override
  String toString() => 'message: $message';
}

class InvalidConfirmPasswordException implements Exception {
  String message;

  InvalidConfirmPasswordException(
      [String message = 'The confirmation password entered is invalid.']) {
    this.message = message;
  }

  @override
  String toString() => 'message: $message';
}

class InvalidUsernameException implements Exception {
  String message;

  InvalidUsernameException(
      [String message = 'The username entered is invalid.']) {
    this.message = message;
  }

  @override
  String toString() => 'message: $message';
}
