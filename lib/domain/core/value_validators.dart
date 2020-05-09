import 'package:dartz/dartz.dart';
import 'package:stringprocess/stringprocess.dart';
import 'package:wine/domain/core/failures.dart';
import 'package:wine/utils/constants.dart';

final StringProcessor tps = StringProcessor();

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const String emailRegex =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmailAddress(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(
  String input, [
  String input2,
]) {
  const String passwordRegex =
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

Either<ValueFailure<String>, String> validateUsername(String input) {
  if (input != null && input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.invalidUsername(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateTitle(String input) {
  if (input == null || input.isEmpty) {
    return left(ValueFailure.emptyInput(failedValue: input));
  } else if (tps.getWordCount(input) > Constants.seriesTitleMaxWords) {
    return left(ValueFailure.longInput(failedValue: input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validateSubtitle(String input) {
  if (tps.getWordCount(input) > Constants.seriesSubtitleMaxWords) {
    return left(ValueFailure.longInput(failedValue: input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validateSummary(String input) {
  if (input == null || input.isEmpty) {
    return left(ValueFailure.emptyInput(failedValue: input));
  } else if (tps.getWordCount(input) > Constants.seriesSummaryMaxWords) {
    return left(ValueFailure.longInput(failedValue: input));
  } else {
    return right(input);
  }
}

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

Either<ValueFailure<String>, String> validateLanguage(String input) {
  if (input != null && input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.emptySelection(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateCopyrights(String input) {
  if (input != null && input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.emptySelection(failedValue: input));
  }
}
