import 'package:flutter_test/flutter_test.dart';
import 'package:oxidized/oxidized.dart';
import 'package:wine/domain/core/title.dart';
import 'package:wine/domain/core/value_failure.dart';

import '../../utils/constants.dart';

void main() {
  group('Title -', () {
    test('When input valid Then return input', () {
      final title = Title(testTitle);

      expect(title.value, Ok<String, ValueFailure<String>>(testTitle));
    });

    test('When input empty Then return emptyInput', () {
      final title = Title(testEmpty);

      expect(
        title.value,
        Err<String, ValueFailure<String>>(
          const ValueFailure<String>.emptyInput(testEmpty),
        ),
      );
    });

    test(
      'When input too long Then return tooLongInput',
      () {
        final title = Title(testInvalidTitleTooLong);

        expect(
          title.value,
          Err<String, ValueFailure<String>>(
            const ValueFailure<String>.tooLongInput(testInvalidTitleTooLong),
          ),
        );
      },
    );
  });
}
