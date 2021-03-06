import 'package:flutter_test/flutter_test.dart';
import 'package:oxidized/oxidized.dart';
import 'package:wine/domain/core/value_failure.dart';
import 'package:wine/domain/tree/synopsis.dart';

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
