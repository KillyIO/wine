import 'package:flutter_test/flutter_test.dart';
import 'package:oxidized/oxidized.dart';
import 'package:wine/domain/core/language.dart';
import 'package:wine/domain/core/value_failure.dart';

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
