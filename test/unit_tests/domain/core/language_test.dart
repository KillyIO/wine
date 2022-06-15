import 'package:flutter_test/flutter_test.dart';
import 'package:oxidized/oxidized.dart';
import 'package:wine/core/language.domain.dart';
import 'package:wine/core/value_failure.domain.dart';

import '../../utils/constants.dart';

void main() {
  group('Language -', () {
    test('When input valid Then return input', () {
      final language = Language(testLanguage);

      expect(
        language.value,
        Ok<String, ValueFailure<String>>(testLanguage),
      );
    });

    test('When input empty Then return emptySelection', () {
      final language = Language(testEmpty);

      expect(
        language.value,
        Err<String, ValueFailure<String>>(
          const ValueFailure<String>.emptySelection(testEmpty),
        ),
      );
    });
  });
}
