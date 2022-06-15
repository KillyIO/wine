import 'package:flutter_test/flutter_test.dart';
import 'package:oxidized/oxidized.dart';
import 'package:wine/features/tree/synopsis.domain.dart';
import 'package:wine/core/value_failure.domain.dart';

import '../../utils/constants.dart';

void main() {
  group('Synopsis -', () {
    test('When input valid Then return input', () {
      final synopsis = Synopsis(testSynopsis);

      expect(
        synopsis.value,
        Ok<String, ValueFailure<String>>(testSynopsis),
      );
    });

    test('When input empty Then return input', () {
      final synopsis = Synopsis(testEmpty);

      expect(
        synopsis.value,
        Err<String, ValueFailure<String>>(
          const ValueFailure<String>.emptyInput(testEmpty),
        ),
      );
    });

    test('When input empty Then return tooLong', () {
      final synopsis = Synopsis(testInvalidSynopsisTooLong);

      expect(
        synopsis.value,
        Err<String, ValueFailure<String>>(
          const ValueFailure<String>.tooLongInput(testInvalidSynopsisTooLong),
        ),
      );
    });
  });
}
