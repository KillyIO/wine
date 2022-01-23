import 'dart:io';

import 'package:oxidized/oxidized.dart';
import 'package:string_validator/string_validator.dart';
import 'package:stringr/stringr.dart';

import 'package:wine/domain/core/value_failure.dart';
import 'package:wine/infrastructure/core/string_helpers.dart';
import 'package:wine/utils/constants/chapter.dart';
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
Result<String, ValueFailure<String>> validateCoverFile(String path) {
  final isImage = path.isImage;

  if (isImage != null && isImage && File(path).existsSync()) {
    return Ok(path);
  }
  return Err(ValueFailure.invalidCoverFile(path));
}

/// @nodoc
Result<String, ValueFailure<String>> validateCoverURL(String input) {
  if (isURL(input)) {
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
Result<String, ValueFailure<String>> validateSelectionNotEmpty(String input) {
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
Result<String, ValueFailure<String>> validateStory(
  String input,
  List<dynamic> json,
) {
  if (input.isEmpty) {
    return Err(ValueFailure.emptyInput(json.toString()));
  }
  if (input.countWords() < storyMinWords) {
    return Err(ValueFailure.tooShortInput(json.toString()));
  }
  if (input.countWords() > storyMaxWords) {
    return Err(ValueFailure.tooLongInput(json.toString()));
  }
  return Ok(json.toString());
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

/// List of potentially malicious usernames.
/// Blacklisted usernames.
final maliciousUsernames = <String>[
  'root',
  'admin',
  'user',
  'test',
  'ubuntu',
  'ubnt',
  'support',
  'oracle',
  'pi',
  'guest',
  'postgres',
  'ftpuser',
  'usuario',
  'nagios',
  '1234',
  'ftp',
  'operator',
  'git',
  'hadoop',
  'ts3',
];

/// @nodoc
Result<String, ValueFailure<String>> validateUsername(String input) {
  if (input.isNotEmpty &&
      RegExp(r'^(?=[a-zA-Z0-9._]{4,32}$)(?!.*[_.]{2})[^_.].*[^_.]$')
          .hasMatch(input) &&
      !maliciousUsernames.contains(input)) {
    return Ok(input);
  }
  return Err(ValueFailure.invalidUsername(input));
}
