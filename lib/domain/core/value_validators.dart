import 'dart:io';

import 'package:rustic/result.dart';
import 'package:string_validator/string_validator.dart';
import 'package:stringr/stringr.dart';

import 'package:wine/domain/core/value_failure.dart';
import 'package:wine/helpers/string_extension.dart';
import 'package:wine/utils/constants/core.dart';
import 'package:wine/utils/constants/series.dart';

/// @nodoc
Result<String, ValueFailure<String>> validateConfirmPassword(
  String input,
  String input2,
) {
  if (input == input2) {
    return Ok(input);
  }
  return Err(ValueFailure.invalidConfirmPassword(input));
}

/// @nodoc
Result<File, ValueFailure<File>> validateCoverFile(File file) {
  if (file.path.isImage && file.existsSync()) {
    return Ok(file);
  }
  return Err(ValueFailure.invalidCoverFile(file));
}

/// @nodoc
Result<String, ValueFailure<String>> validateCoverURL(String input) {
  if (input.isImage && isURL(input)) {
    return Ok(input);
  }
  return Err(ValueFailure.invalidCoverURL(input));
}

/// @nodoc
Result<String, ValueFailure<String>> validateEmailAddress(String input) {
  if (isEmail(input)) {
    return Ok(input);
  }
  return Err(ValueFailure.invalidEmailAddress(input));
}

/// @nodoc
Result<String, ValueFailure<String>> validateGenre(
  String input, {
  bool isOptional = false,
}) {
  if (input.isNotEmpty || isOptional) {
    return Ok(input);
  }
  return Err(ValueFailure.emptySelection(input));
}

/// @nodoc
Result<String, ValueFailure<String>> validateLanguage(String input) {
  if (input.isNotEmpty) {
    return Ok(input);
  }
  return Err(ValueFailure.emptySelection(input));
}

/// @nodoc
Result<String, ValueFailure<String>> validatePassword(String input) {
  const passwordRegex =
      r'^(?=.*\d)(?=.*[~!@#$%^&*()_\-+=|\\{}[\]:;<>?/])(?=.*[A-Z])(?=.*[a-z])\S{6,256}$';
  if (RegExp(passwordRegex).hasMatch(input)) {
    return Ok(input);
  }
  return Err(ValueFailure.invalidPassword(input));
}

/// @nodoc
Result<String, ValueFailure<String>> validateSubtitle(String input) {
  if (input.countWords() > subtitleMaxWords) {
    return Err(ValueFailure.tooLongInput(input));
  }
  return Ok(input);
}

/// @nodoc
Result<String, ValueFailure<String>> validateSummary(String input) {
  if (input.isEmpty) {
    return Err(ValueFailure.emptyInput(input));
  } else if (input.countWords() > summaryMaxWords) {
    return Err(ValueFailure.tooLongInput(input));
  }
  return Ok(input);
}

/// @nodoc
Result<String, ValueFailure<String>> validateTitle(String input) {
  if (input.isEmpty) {
    return Err(ValueFailure.emptyInput(input));
  } else if (input.countWords() > titleMaxWords) {
    return Err(ValueFailure.tooLongInput(input));
  }
  return Ok(input);
}

/// @nodoc
Result<String, ValueFailure<String>> validateUniqueID(String input) {
  if (input.isNotEmpty) {
    return Ok(input);
  }
  return Err(ValueFailure.invalidUniqueID(input));
}

/// @nodoc
Result<String, ValueFailure<String>> validateUsername(String input) {
  if (input.isNotEmpty) {
    return Ok(input);
  }
  return Err(ValueFailure.invalidUsername(input));
}
