import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wine/domain/core/language.dart';
import 'package:wine/domain/core/value_failure.dart';

import '../../utils/constants.dart';

void main() {
  group('Language -', () {
    test('When input null Then throw AssertionError', () {
      expect(
        () => Language(null),
        throwsAssertionError,
      );
    });

    test('When input valid Then return input', () {
      final language = Language(testLanguage);

      expect(language.value, right(testLanguage));
    });

    test('When input empty Then return emptySelection', () {
      final language = Language(testEmpty);

      expect(
        language.value,
        left(const ValueFailure<String>.emptySelection(testEmpty)),
      );
    });
  });
}
