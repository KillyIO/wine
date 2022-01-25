import 'package:flutter_test/flutter_test.dart';
import 'package:oxidized/oxidized.dart';
import 'package:wine/domain/core/value_failure.dart';
import 'package:wine/domain/tree/summary.dart';

import '../../utils/constants.dart';

void main() {
  group('Summary -', () {
    test('When input valid Then return input', () {
      final summary = Summary(testSummary);

      expect(
        summary.value,
        Ok<String, ValueFailure<String>>(testSummary),
      );
    });

    test('When input empty Then return input', () {
      final summary = Summary(testEmpty);

      expect(
        summary.value,
        Err<String, ValueFailure<String>>(
          const ValueFailure<String>.emptyInput(testEmpty),
        ),
      );
    });

    test('When input empty Then return tooLong', () {
      final summary = Summary(testInvalidSummaryTooLong);

      expect(
        summary.value,
        Err<String, ValueFailure<String>>(
          const ValueFailure<String>.tooLongInput(testInvalidSummaryTooLong),
        ),
      );
    });
  });
}
