import 'package:dartz/dartz.dart';
import 'package:string_validator/string_validator.dart';
import 'package:wine/domain/core/value_failure.dart';

/// @nodoc
Either<ValueFailure<String>, String> validateConfirmPassword(
  String input,
  String input2,
) {
  if (input == input2) {
    return right(input);
  } else {
    return left(ValueFailure.invalidConfirmPassword(input));
  }
}

/// @nodoc
Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  if (isEmail(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmailAddress(input));
  }
}

/// @nodoc
Either<ValueFailure<String>, String> validatePassword(String input) {
  const passwordRegex =
      r'^(?=.*\d)(?=.*[~!@#$%^&*()_\-+=|\\{}[\]:;<>?/])(?=.*[A-Z])(?=.*[a-z])\S{6,256}$';
  if (RegExp(passwordRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidPassword(input));
  }
}

/// @nodoc
Either<ValueFailure<String>, String> validateUniqueID(String input) {
  if (input != null && input.isNotEmpty) {
    return right(input);
  }
  return left(ValueFailure.invalidUniqueID(input));
}

/// @nodoc
Either<ValueFailure<String>, String> validateUsername(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.invalidUsername(input));
  }
}
