import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wine/domain/core/title.dart';
import 'package:wine/domain/core/value_failure.dart';

import '../../utils/constants.dart';

void main() {
  group('Title -', () {
    test('When input null Then throw AssertionError', () {
      expect(
        () => Title(null),
        throwsAssertionError,
      );
    });

    test('When input valid Then return input', () {
      final title = Title(testTitle);

      expect(title.value, right(testTitle));
    });

    test('When input empty Then return emptyInput', () {
      final title = Title(testEmpty);

      expect(
        title.value,
        left(const ValueFailure<String>.emptyInput(testEmpty)),
      );
    });

    test(
      'When input too long Then return tooLongInput',
      () {
        final title = Title(testInvalidTitleTooLong);

        expect(
          title.value,
          left(
            const ValueFailure<String>.tooLongInput(testInvalidTitleTooLong),
          ),
        );
      },
    );
  });
}
