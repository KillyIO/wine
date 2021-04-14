import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wine/domain/core/cover_url.dart';
import 'package:wine/domain/core/value_failure.dart';

import '../../utils/constants.dart';

void main() {
  group('CoverURL -', () {
    test('When input null Then throw AssertionError', () {
      expect(
        () => CoverURL(null),
        throwsAssertionError,
      );
    });

    test('When input URL Then return input', () {
      final coverURL = CoverURL(testCoverURL);

      expect(coverURL.value, right(testCoverURL));
    });

    test('When input not URL Then return invalidCoverURL', () {
      final coverURL = CoverURL(testInvalidCoverURL);

      expect(
        coverURL.value,
        left(const ValueFailure.invalidCoverURL(testInvalidCoverURL)),
      );
    });
  });
}
