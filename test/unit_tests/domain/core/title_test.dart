import 'package:flutter_test/flutter_test.dart';
import 'package:rustic/result.dart';
import 'package:wine/domain/core/title.dart';
import 'package:wine/domain/core/value_failure.dart';

import '../../utils/constants.dart';

void main() {
  group('Title -', () {
    test('When input valid Then return input', () {
      final title = Title(testTitle);

      expect(title.value, const Ok<String, ValueFailure<String>>(testTitle));
    });

    test('When input empty Then return emptyInput', () {
      final title = Title(testEmpty);

      expect(
        title.value,
        const Err<String, ValueFailure<String>>(
          ValueFailure<String>.emptyInput(testEmpty),
        ),
      );
    });

    test(
      'When input too long Then return tooLongInput',
      () {
        final title = Title(testInvalidTitleTooLong);

        expect(
          title.value,
          const Err<String, ValueFailure<String>>(
            ValueFailure<String>.tooLongInput(testInvalidTitleTooLong),
          ),
        );
      },
    );
  });
}
