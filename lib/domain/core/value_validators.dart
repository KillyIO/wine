import 'package:dartz/dartz.dart';
import 'package:validators/validators.dart';
import 'package:wine/domain/core/failures.dart';

/// @nodoc
Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  if (isEmail(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmailAddress(failedValue: input));
  }
}

/// @nodoc
Either<ValueFailure<String>, String> validatePassword(
  String input, [
  String input2,
]) {
  const passwordRegex =
      r'^(?=.*\d)(?=.*[~!@#$%^&*()_\-+=|\\{}[\]:;<>?/])(?=.*[A-Z])(?=.*[a-z])\S{6,256}$';
  if (input2 != null) {
    if (RegExp(passwordRegex).hasMatch(input) && input == input2) {
      return right(input);
    } else {
      return left(ValueFailure.invalidConfirmPassword(failedValue: input2));
    }
  } else {
    if (RegExp(passwordRegex).hasMatch(input)) {
      return right(input);
    } else {
      return left(ValueFailure.invalidPassword(failedValue: input));
    }
  }
}

/// @nodoc
Either<ValueFailure<String>, String> validateUsername(String input) {
  if (input != null && input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.invalidUsername(failedValue: input));
  }
}
