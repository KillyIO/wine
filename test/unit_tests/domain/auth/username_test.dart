import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wine/domain/auth/username.dart';
import 'package:wine/domain/core/value_failure.dart';

import '../../utils/constants.dart';

void main() {
  group('Username -', () {
    test(
      'When input null Then throw AssertionError',
      () {
        expect(
          () => Username(null),
          throwsAssertionError,
        );
      },
    );

    test(
      'When input valid Then return input',
      () {
        final username = Username(testUsername);

        expect(username.value, right(testUsername));
      },
    );

    test(
      'When input invalid The return invalidUsername',
      () {
        final username = Username(testInvalidUsername);

        expect(
          username.value,
          left(const ValueFailure<String>.invalidUsername(testInvalidUsername)),
        );
      },
    );
  });
}
