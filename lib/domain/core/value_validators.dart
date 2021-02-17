import 'package:dartz/dartz.dart';
import 'package:flutter_stringprocess/flutter_stringprocess.dart';
import 'package:string_validator/string_validator.dart';
import 'package:wine/domain/core/failures.dart';
import 'package:wine/utils/constants.dart';

/// @nodoc
final StringProcessor tps = StringProcessor();

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
      return left(ValueFailure.invalidConfirmPassword(failedValue: input));
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

/// @nodoc
Either<ValueFailure<String>, String> validateTitle(String input) {
  if (input == null || input.isEmpty) {
    return left(ValueFailure.emptyInput(failedValue: input));
  } else if (tps.getWordCount(input) > Constants.seriesTitleMaxWords) {
    return left(ValueFailure.longInput(failedValue: input));
  } else {
    return right(input);
  }
}

/// @nodoc
Either<ValueFailure<String>, String> validateSubtitle(String input) {
  if (tps.getWordCount(input) > Constants.seriesSubtitleMaxWords) {
    return left(ValueFailure.longInput(failedValue: input));
  } else {
    return right(input);
  }
}

/// @nodoc
Either<ValueFailure<String>, String> validateSummary(String input) {
  if (input == null || input.isEmpty) {
    return left(ValueFailure.emptyInput(failedValue: input));
  } else if (tps.getWordCount(input) > Constants.seriesSummaryMaxWords) {
    return left(ValueFailure.longInput(failedValue: input));
  } else {
    return right(input);
  }
}

/// @nodoc
Either<ValueFailure<String>, String> validateGenre(
  String input, {
  bool isOptional,
}) {
  if ((input != null && input.isNotEmpty) || isOptional) {
    return right(input);
  } else {
    return left(ValueFailure.emptySelection(failedValue: input));
  }
}

/// @nodoc
Either<ValueFailure<String>, String> validateLanguage(String input) {
  if (input != null && input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.emptySelection(failedValue: input));
  }
}

/// @nodoc
Either<ValueFailure<String>, String> validateLicence(String input) {
  if (input != null && input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.emptySelection(failedValue: input));
  }
}

/// @nodoc
Either<ValueFailure<String>, String> validateStory(String input) {
  if (input == null || input.isEmpty) {
    return left(ValueFailure.emptyInput(failedValue: input));
  } else if (tps.getWordCount(input) < Constants.chapterStoryMinWords) {
    return left(ValueFailure.shortInput(failedValue: input));
  } else if (tps.getWordCount(input) > Constants.chapterStoryMaxWords) {
    return left(ValueFailure.longInput(failedValue: input));
  } else {
    return right(input);
  }
}
