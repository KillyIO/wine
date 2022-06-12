import 'package:flutter_test/flutter_test.dart';
import 'package:oxidized/oxidized.dart';
import 'package:wine/domain/tree/subtitle.dart';
import 'package:wine/features/core/value_failure.domain.dart';

import '../../utils/constants.dart';

void main() {
  group('Subtitle -', () {
    test('When input valid Then return input', () {
      final subtitle = Subtitle(testSubtitle);

      expect(
        subtitle.value,
        Ok<String, ValueFailure<String>>(testSubtitle),
      );
    });

    test('When input empty Then return input', () {
      final subtitle = Subtitle(testEmpty);

      expect(subtitle.value, Ok<String, ValueFailure<String>>(testEmpty));
    });

    test('When input too long Then return tooLong', () {
      final subtitle = Subtitle(testInvalidSubtitleTooLong);

      expect(
        subtitle.value,
        Err<String, ValueFailure<String>>(
          const ValueFailure<String>.tooLongInput(testInvalidSubtitleTooLong),
        ),
      );
    });
  });
}
