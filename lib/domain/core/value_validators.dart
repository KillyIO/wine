import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:string_validator/string_validator.dart';
import 'package:wine/domain/core/value_failure.dart';
import 'package:wine/helpers/string_extension.dart';

/// @nodoc
Either<ValueFailure<String>, String> validateConfirmPassword(
  String input,
  String input2,
) {
  if (input == input2) {
    return right(input);
  }
  return left(ValueFailure.invalidConfirmPassword(input));
}

/// @nodoc
Either<ValueFailure<File>, File> validateCoverFile(File file) {
  if (file.path.isImage && file.existsSync()) {
    return right(file);
  }
  return left(ValueFailure.invalidCoverFile(file));
}

/// @nodoc
Either<ValueFailure<String>, String> validateCoverURL(String input) {
  if (input.isImage && isURL(input)) {
    return right(input);
  }
  return left(ValueFailure.invalidCoverURL(input));
}

/// @nodoc
Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  if (isEmail(input)) {
    return right(input);
  }
  return left(ValueFailure.invalidEmailAddress(input));
}

/// @nodoc
Either<ValueFailure<String>, String> validateGenre(
  String input, {
  bool isOptional = false,
}) {
  if ((input != null && input.isNotEmpty) || isOptional) {
    return right(input);
  }
  return left(ValueFailure.emptySelection(input));
}

/// @nodoc
Either<ValueFailure<String>, String> validatePassword(String input) {
  const passwordRegex =
      r'^(?=.*\d)(?=.*[~!@#$%^&*()_\-+=|\\{}[\]:;<>?/])(?=.*[A-Z])(?=.*[a-z])\S{6,256}$';
  if (RegExp(passwordRegex).hasMatch(input)) {
    return right(input);
  }
  return left(ValueFailure.invalidPassword(input));
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
  }
  return left(ValueFailure.invalidUsername(input));
}
