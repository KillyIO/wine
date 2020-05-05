import 'package:dartz/dartz.dart';
import 'package:wine/domain/core/failures.dart';

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const String emailRegex =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmailAddress(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  const String passwordRegex =
      r'^(?=.*\d)(?=.*[~!@#$%^&*()_\-+=|\\{}[\]:;<>?/])(?=.*[A-Z])(?=.*[a-z])\S{6,256}$';
  if (RegExp(passwordRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidPassword(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateUsername(String input) {
  if (input != null && input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.invalidUsername(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateTitle(String input) {
  if (input != null && input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.invalidTitle(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateDescription(String input) {
  if (input != null && input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.invalidDescription(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateCharacter(String input) {
  if (input != null && input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.invalidCharacter(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateGenre(String input) {
  if (input != null && input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.invalidGenre(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateLanguage(String input) {
  if (input != null && input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.invalidLanguage(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateCopyright(String input) {
  if (input != null && input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.invalidCopyright(failedValue: input));
  }
}
