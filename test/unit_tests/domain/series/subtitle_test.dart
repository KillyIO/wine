import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wine/domain/core/value_failure.dart';
import 'package:wine/domain/series/subtitle.dart';

import '../../utils/constants.dart';

void main() {
  group('Subtitle -', () {
    test('When input null Then throw AssertionError', () {
      expect(
        () => Subtitle(null),
        throwsAssertionError,
      );
    });

    test('When input valid Then return input', () {
      final subtitle = Subtitle(testSubtitle);

      expect(subtitle.value, right(testSubtitle));
    });

    test('When input empty Then return input', () {
      final subtitle = Subtitle(testEmpty);

      expect(subtitle.value, right(testEmpty));
    });

    test('When input empty Then return tooLong', () {
      final subtitle = Subtitle(testInvalidSubtitleTooLong);

      expect(
        subtitle.value,
        left(
          const ValueFailure<String>.tooLongInput(testInvalidSubtitleTooLong),
        ),
      );
    });
  });
}
