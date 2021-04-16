import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wine/domain/core/value_failure.dart';
import 'package:wine/domain/series/summary.dart';

import '../../utils/constants.dart';

void main() {
  group('Summary -', () {
    test('When input null Then throw AssertionError', () {
      expect(
        () => Summary(null),
        throwsAssertionError,
      );
    });

    test('When input valid Then return input', () {
      final summary = Summary(testSummary);

      expect(summary.value, right(testSummary));
    });

    test('When input empty Then return input', () {
      final summary = Summary(testEmpty);

      expect(
        summary.value,
        left(const ValueFailure<String>.emptyInput(testEmpty)),
      );
    });

    test('When input empty Then return tooLong', () {
      final summary = Summary(testInvalidSummaryTooLong);

      expect(
        summary.value,
        left(
          const ValueFailure<String>.tooLongInput(testInvalidSummaryTooLong),
        ),
      );
    });
  });
}
